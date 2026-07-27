import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_documents_cubit/driver_documents_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_documents_cubit/driver_documents_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/documents_summary_header.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/driver_document_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/driver_document_shimmer.dart';

// ─── Documents View ───────────────────────────────────────────────────────────
class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DriverDocumentsCubit>(
      create: (_) => getIt<DriverDocumentsCubit>()..fetchDocuments(),
      child: const _DocumentsViewBody(),
    );
  }
}

class _DocumentsViewBody extends StatefulWidget {
  const _DocumentsViewBody();

  @override
  State<_DocumentsViewBody> createState() => _DocumentsViewBodyState();
}

class _DocumentsViewBodyState extends State<_DocumentsViewBody> {
  String _selectedFilter = 'all';

  List<DriverDocumentEntity> _filterDocuments(
    List<DriverDocumentEntity> documents,
  ) {
    if (_selectedFilter == 'all') return documents;
    return documents.where((doc) {
      if (_selectedFilter == 'verified') {
        return doc.status == DriverDocStatus.approved;
      } else if (_selectedFilter == 'rejected') {
        return doc.status == DriverDocStatus.rejected;
      } else if (_selectedFilter == 'pending') {
        return doc.status == DriverDocStatus.pending;
      } else if (_selectedFilter == 'expired') {
        return doc.status == DriverDocStatus.expired;
      }
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.darkScaffold : AppColors.cardLight,
        elevation: 0,
        scrolledUnderElevation: 1,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            size: 20.r,
          ),
        ),
        title: Text(
          'My Documents',
          style: AppTextStyles.w700_18.copyWith(
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
          ),
        ),
      ),
      body: BlocBuilder<DriverDocumentsCubit, DriverDocumentsState>(
        builder: (context, state) {
          if (state.status == DriverDocumentsStatus.loading &&
              state.documents.isEmpty) {
            return const DriverDocumentShimmer();
          }

          if (state.status == DriverDocumentsStatus.failure &&
              state.documents.isEmpty) {
            return _buildErrorState(context, state.errorMessage);
          }

          final allDocs = state.documents;
          final filteredDocs = _filterDocuments(allDocs);

          return RefreshIndicator(
            color: AppColors.primaryColor,
            onRefresh: () => context
                .read<DriverDocumentsCubit>()
                .fetchDocuments(isRefresh: true),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (allDocs.isNotEmpty)
                          DocumentsSummaryHeader(documents: allDocs),
                        SizedBox(height: 16.h),
                        if (allDocs.isNotEmpty)
                          _buildFilterBar(context, isDark),
                      ],
                    ),
                  ),
                ),
                if (allDocs.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: _buildEmptyState(context),
                  )
                else if (filteredDocs.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: _buildNoMatchingFilterState(context),
                  )
                else
                  SliverPadding(
                    padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 24.h),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final doc = filteredDocs[index];
                        return DriverDocumentCard(
                          key: ValueKey(doc.id),
                          document: doc,
                        );
                      }, childCount: filteredDocs.length),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildFilterBar(BuildContext context, bool isDark) {
    final filters = [
      {'key': 'all', 'label': 'All Documents'},
      {'key': 'verified', 'label': 'Verified'},
      {'key': 'pending', 'label': 'Pending'},
      {'key': 'rejected', 'label': 'Rejected'},
      {'key': 'expired', 'label': 'Expired'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filters.map((f) {
          final isSelected = _selectedFilter == f['key'];
          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: ChoiceChip(
              label: Text(f['label']!),
              selected: isSelected,
              onSelected: (_) {
                setState(() {
                  _selectedFilter = f['key']!;
                });
              },
              selectedColor: AppColors.primaryColor,
              backgroundColor: isDark
                  ? AppColors.cardDark
                  : AppColors.cardLight,
              labelStyle: AppTextStyles.w500_12.copyWith(
                color: isSelected
                    ? Colors.white
                    : (isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurfaceVariant),
              ),
              side: BorderSide(
                color: isSelected
                    ? AppColors.primaryColor
                    : (isDark
                          ? AppColors.borderColorDark
                          : AppColors.borderColor.withValues(alpha: 0.4)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(24.r),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.folder_off_rounded,
                size: 64.r,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'No Documents Found',
              style: AppTextStyles.w700_18.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'You have no uploaded driver documents registered at this time.',
              textAlign: TextAlign.center,
              style: AppTextStyles.w400_12.copyWith(color: AppColors.textGrey),
            ),
            SizedBox(height: 24.h),
            ElevatedButton.icon(
              onPressed: () => context
                  .read<DriverDocumentsCubit>()
                  .fetchDocuments(isRefresh: true),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Reload Documents'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoMatchingFilterState(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.filter_alt_off_rounded,
              size: 48.r,
              color: AppColors.textGrey,
            ),
            SizedBox(height: 16.h),
            Text(
              'No documents match this filter',
              style: AppTextStyles.w600_16.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
              ),
            ),
            SizedBox(height: 12.h),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedFilter = 'all';
                });
              },
              child: const Text('Reset Filter to All'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String? errorMessage) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: AppColors.dangerSurface,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline_rounded,
                size: 48.r,
                color: AppColors.danger,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Failed to Load Documents',
              style: AppTextStyles.w700_18.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              errorMessage ??
                  'An unexpected error occurred while fetching your documents.',
              textAlign: TextAlign.center,
              style: AppTextStyles.w400_12.copyWith(color: AppColors.textGrey),
            ),
            SizedBox(height: 24.h),
            ElevatedButton.icon(
              onPressed: () =>
                  context.read<DriverDocumentsCubit>().fetchDocuments(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
