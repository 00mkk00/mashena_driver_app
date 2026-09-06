import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/constants/app_constants.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/image_picker.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/upload_driver_docs_params.dart';
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

  void _showUploadDocumentBottomSheet(BuildContext context) {
    int profileId = 0;
    final cubit = context.read<DriverDocumentsCubit>();
    if (cubit.state.documents.isNotEmpty) {
      profileId = cubit.state.documents.first.driverProfileId;
    } else {
      final userJson = getIt<LocalStorage>().getString(
        AppConstants.driverUserKey,
      );
      if (userJson != null && userJson.isNotEmpty) {
        try {
          final driver = DriverModel.fromJson(
            jsonDecode(userJson) as Map<String, dynamic>,
          );
          profileId = driver.id;
        } catch (_) {}
      }
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) =>
          _UploadDocumentBottomSheet(cubit: cubit, driverProfileId: profileId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showUploadDocumentBottomSheet(context),
        backgroundColor: AppColors.primaryColor,
        elevation: 4,
        icon: const Icon(Icons.add_a_photo_rounded, color: Colors.white),
        label: Text(
          S.of(context).docsUploadDocument,
          style: AppTextStyles.w600_14.copyWith(color: Colors.white),
        ),
      ),
      backgroundColor: isDark
          ? AppColors.darkScaffold
          : AppColors.lightScaffold,
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
          S.of(context).docsMyDocuments,
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
                    padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 80.h),
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
      {'key': 'all', 'label': S.of(context).docsFilterAll},
      {'key': 'verified', 'label': S.of(context).docsFilterVerified},
      {'key': 'pending', 'label': S.of(context).docsFilterPending},
      {'key': 'rejected', 'label': S.of(context).docsFilterRejected},
      {'key': 'expired', 'label': S.of(context).docsFilterExpired},
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
              S.of(context).docsNoDocumentsFound,
              style: AppTextStyles.w700_18.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              S.of(context).docsNoDocumentsSubtitle,
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
              label: Text(S.of(context).docsReloadDocuments),
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
              S.of(context).docsNoMatchFilter,
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
              child: Text(S.of(context).docsResetFilter),
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
              S.of(context).docsFailedToLoad,
              style: AppTextStyles.w700_18.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              errorMessage ?? S.of(context).docsFailedToLoadSubtitle,
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
              label: Text(S.of(context).docsReloadDocuments),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Upload Document Bottom Sheet ─────────────────────────────────────────────
class _UploadDocumentBottomSheet extends StatefulWidget {
  final DriverDocumentsCubit cubit;
  final int driverProfileId;

  const _UploadDocumentBottomSheet({
    required this.cubit,
    required this.driverProfileId,
  });

  @override
  State<_UploadDocumentBottomSheet> createState() =>
      __UploadDocumentBottomSheetState();
}

class __UploadDocumentBottomSheetState
    extends State<_UploadDocumentBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _issuedAtController = TextEditingController();
  final _expiresAtController = TextEditingController();

  DriverDocType _selectedDocType = DriverDocType.license;
  String? _imagePath;
  bool _isLoading = false;

  final _imageService = getIt<ImagePickerService>();

  @override
  void dispose() {
    _issuedAtController.dispose();
    _expiresAtController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final path = await _imageService.pickImage();
    if (path != null) {
      setState(() {
        _imagePath = path;
      });
    }
  }

  Future<void> _selectDate(
    BuildContext context,
    TextEditingController controller,
  ) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: isDark
                ? const ColorScheme.dark(
                    primary: AppColors.primaryColor,
                    onPrimary: Colors.white,
                    surface: AppColors.cardDark,
                    onSurface: AppColors.onSurfaceDark,
                  )
                : const ColorScheme.light(
                    primary: AppColors.primaryColor,
                    onPrimary: Colors.white,
                    surface: AppColors.cardLight,
                    onSurface: AppColors.onSurface,
                  ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        controller.text = picked.toIso8601String().split('T').first;
      });
    }
  }

  String _getDocTypeName(DriverDocType type) {
    switch (type) {
      case DriverDocType.license:
        return S.of(context).docsTypeLicense;
      case DriverDocType.insurance:
        return S.of(context).docsTypeInsurance;
      case DriverDocType.mechanic:
        return S.of(context).docsTypeMechanic;
      case DriverDocType.identity:
        return S.of(context).docsTypeIdentity;
      case DriverDocType.other:
        return S.of(context).docsTypeOther;
    }
  }

  IconData _getDocTypeIcon(DriverDocType type) {
    switch (type) {
      case DriverDocType.license:
        return Icons.badge_rounded;
      case DriverDocType.insurance:
        return Icons.shield_rounded;
      case DriverDocType.mechanic:
        return Icons.car_repair_rounded;
      case DriverDocType.identity:
        return Icons.credit_card_rounded;
      case DriverDocType.other:
        return Icons.description_rounded;
    }
  }

  Future<void> _submit() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    if (_imagePath == null) {
      context.showErrorToast(S.of(context).docsImageRequired);
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final errorMsg = await widget.cubit.uploadDocument(
      UploadDriverDocsParams(
        driverProfileId: widget.driverProfileId,
        docType: _selectedDocType,
        issuedAt: _issuedAtController.text.isEmpty
            ? null
            : _issuedAtController.text,
        expiresAt: _expiresAtController.text.isEmpty
            ? null
            : _expiresAtController.text,
        filePath: _imagePath!,
      ),
    );

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });

    if (errorMsg != null) {
      context.showErrorToast(errorMsg);
    } else {
      context.showSuccessToast(S.of(context).docsUploadSuccess);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 24.h,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Drag Handle
                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: isDark ? Colors.grey[700] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                /// Title Header
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.cloud_upload_rounded,
                        color: AppColors.primaryColor,
                        size: 24.r,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).docsUploadNewHeader,
                          style: AppTextStyles.w700_18.copyWith(
                            color: isDark
                                ? AppColors.onSurfaceDark
                                : AppColors.onSurface,
                          ),
                        ),
                        Text(
                          S.of(context).docsUploadNewSubtitle,
                          style: AppTextStyles.w400_12.copyWith(
                            color: AppColors.textGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                /// Document Type Dropdown
                DropdownButtonFormField<DriverDocType>(
                  initialValue: _selectedDocType,
                  isExpanded: true,
                  dropdownColor: isDark
                      ? AppColors.cardDark
                      : AppColors.cardLight,
                  decoration: InputDecoration(
                    labelText: S.of(context).docsTypeLabel,
                    labelStyle: AppTextStyles.w400_14.copyWith(
                      color: AppColors.textfieldHintGrey,
                    ),
                    prefixIcon: Icon(
                      _getDocTypeIcon(_selectedDocType),
                      color: AppColors.primaryColor,
                      size: 22.r,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor.withValues(alpha: 0.6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  items: DriverDocType.values.map((type) {
                    return DropdownMenuItem<DriverDocType>(
                      value: type,
                      child: Text(
                        _getDocTypeName(type),
                        style: AppTextStyles.w500_14.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (val) {
                    if (val != null) {
                      setState(() {
                        _selectedDocType = val;
                      });
                    }
                  },
                ),
                SizedBox(height: 14.h),

                /// Issued At
                TextFormField(
                  controller: _issuedAtController,
                  readOnly: true,
                  onTap: () => _selectDate(context, _issuedAtController),
                  style: AppTextStyles.w500_14.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                  decoration: InputDecoration(
                    labelText: S.of(context).docsIssuedDateLabel,
                    labelStyle: AppTextStyles.w400_14.copyWith(
                      color: AppColors.textfieldHintGrey,
                    ),
                    hintText: 'YYYY-MM-DD',
                    prefixIcon: Icon(
                      Icons.calendar_today_rounded,
                      size: 20.r,
                      color: _issuedAtController.text.isNotEmpty
                          ? AppColors.primaryColor
                          : AppColors.textGrey,
                    ),
                    suffixIcon: _issuedAtController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              Icons.close_rounded,
                              size: 18.r,
                              color: AppColors.textGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                _issuedAtController.clear();
                              });
                            },
                          )
                        : null,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor.withValues(alpha: 0.6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14.h),

                /// Expires At
                TextFormField(
                  controller: _expiresAtController,
                  readOnly: true,
                  onTap: () => _selectDate(context, _expiresAtController),
                  style: AppTextStyles.w500_14.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                  decoration: InputDecoration(
                    labelText: S.of(context).docsExpirationDateLabel,
                    labelStyle: AppTextStyles.w400_14.copyWith(
                      color: AppColors.textfieldHintGrey,
                    ),
                    hintText: 'YYYY-MM-DD',
                    prefixIcon: Icon(
                      Icons.event_busy_rounded,
                      size: 20.r,
                      color: _expiresAtController.text.isNotEmpty
                          ? AppColors.primaryColor
                          : AppColors.textGrey,
                    ),
                    suffixIcon: _expiresAtController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              Icons.close_rounded,
                              size: 18.r,
                              color: AppColors.textGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                _expiresAtController.clear();
                              });
                            },
                          )
                        : null,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor.withValues(alpha: 0.6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                /// Image Picker Area
                InkWell(
                  onTap: _pickImage,
                  borderRadius: BorderRadius.circular(14.r),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 150.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: _imagePath == null
                          ? (isDark
                                ? AppColors.surfaceVariantDark
                                : AppColors.primarySurface.withValues(
                                    alpha: 0.4,
                                  ))
                          : Colors.black,
                      borderRadius: BorderRadius.circular(14.r),
                      border: Border.all(
                        color: _imagePath == null
                            ? AppColors.primaryColor.withValues(alpha: 0.5)
                            : Colors.transparent,
                        width: 1.5,
                      ),
                    ),
                    child: _imagePath == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_a_photo_rounded,
                                size: 36.r,
                                color: AppColors.primaryColor,
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                S.of(context).docsTapToChoose,
                                style: AppTextStyles.w600_14.copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          )
                        : Stack(
                            fit: StackFit.expand,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(14.r),
                                child: Image.file(
                                  File(_imagePath!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 8.r,
                                right: 8.r,
                                child: IconButton.filledTonal(
                                  onPressed: () {
                                    setState(() {
                                      _imagePath = null;
                                    });
                                  },
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.danger,
                                  ),
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: Colors.white,
                                    size: 18.r,
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                SizedBox(height: 20.h),

                /// Submit Button
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    title: S.of(context).docsUploadDocument,
                    isLoading: _isLoading,
                    onPressed: _submit,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
