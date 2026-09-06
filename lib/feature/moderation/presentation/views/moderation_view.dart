import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/appeals_cubit/appeals_cubit.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/appeals_cubit/appeals_state.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/moderation_overview_cubit/moderation_overview_cubit.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/moderation_overview_cubit/moderation_overview_state.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/penalties_cubit/penalties_cubit.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/penalties_cubit/penalties_state.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/violations_cubit/violations_cubit.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/violations_cubit/violations_state.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/active_restrictions_banner.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/appeal_details_sheet.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/appeal_item_card.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/moderation_empty_state.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/moderation_shimmers.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/moderation_status_card.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/penalty_item_card.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/submit_appeal_sheet.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/widgets/violation_item_card.dart';

class ModerationView extends StatefulWidget {
  const ModerationView({super.key});

  @override
  State<ModerationView> createState() => _ModerationViewState();
}

class _ModerationViewState extends State<ModerationView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final ScrollController _violationsScrollCtrl = ScrollController();
  final ScrollController _penaltiesScrollCtrl = ScrollController();
  final ScrollController _appealsScrollCtrl = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    _violationsScrollCtrl.addListener(_onViolationsScroll);
    _penaltiesScrollCtrl.addListener(_onPenaltiesScroll);
    _appealsScrollCtrl.addListener(_onAppealsScroll);

    // Initial fetch
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadInitialData();
    });
  }

  void _loadInitialData() {
    context.read<ModerationOverviewCubit>().loadOverview();
    context.read<ViolationsCubit>().getViolations();
    context.read<PenaltiesCubit>().getPenalties();
    context.read<AppealsCubit>().getAppeals();
  }

  void _onViolationsScroll() {
    if (_violationsScrollCtrl.position.pixels >=
        _violationsScrollCtrl.position.maxScrollExtent - 200) {
      context.read<ViolationsCubit>().getViolations();
    }
  }

  void _onPenaltiesScroll() {
    if (_penaltiesScrollCtrl.position.pixels >=
        _penaltiesScrollCtrl.position.maxScrollExtent - 200) {
      context.read<PenaltiesCubit>().getPenalties();
    }
  }

  void _onAppealsScroll() {
    if (_appealsScrollCtrl.position.pixels >=
        _appealsScrollCtrl.position.maxScrollExtent - 200) {
      context.read<AppealsCubit>().getAppeals();
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _violationsScrollCtrl.dispose();
    _penaltiesScrollCtrl.dispose();
    _appealsScrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);

    return Scaffold(
      backgroundColor: isDark
          ? AppColors.darkScaffold
          : AppColors.lightScaffold,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.cardDark : Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          l10n.moderationTitle,
          style: AppTextStyles.w700_18.copyWith(
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.h),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isDark
                      ? AppColors.borderColorDark
                      : AppColors.borderColor,
                ),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelColor: isDark
                  ? AppColors.primaryLight
                  : AppColors.primaryColor,
              unselectedLabelColor: isDark
                  ? AppColors.textGreyDark
                  : AppColors.textGrey,
              indicatorColor: AppColors.primaryColor,
              indicatorWeight: 3,
              labelStyle: AppTextStyles.w700_14,
              unselectedLabelStyle: AppTextStyles.w500_14,
              tabs: [
                Tab(text: l10n.moderationOverview),
                Tab(text: l10n.moderationViolations),
                Tab(text: l10n.moderationPenalties),
                Tab(text: l10n.moderationAppeals),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOverviewTab(context, isDark, l10n),
          _buildViolationsTab(context, isDark, l10n),
          _buildPenaltiesTab(context, isDark, l10n),
          _buildAppealsTab(context, isDark, l10n),
        ],
      ),
    );
  }

  // ─── 1. OVERVIEW TAB ──────────────────────────────────────────────────────────
  Widget _buildOverviewTab(BuildContext context, bool isDark, S l10n) {
    return BlocBuilder<ModerationOverviewCubit, ModerationOverviewState>(
      builder: (context, state) {
        if (state.status == ModerationOverviewStatus.loading &&
            state.overview == null) {
          return const ModerationOverviewShimmer();
        }

        if (state.status == ModerationOverviewStatus.failure &&
            state.overview == null) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<ModerationOverviewCubit>()
                  .loadOverview(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.error_outline_rounded,
                      title: l10n.commonError,
                      description: state.errorMessage ?? l10n.errorSomethingWentWrong,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        final overview = state.overview;
        if (overview == null) {
          return const ModerationOverviewShimmer();
        }

        return RefreshIndicator(
          onRefresh: () async {
            await context
                .read<ModerationOverviewCubit>()
                .loadOverview(isRefresh: true);
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Account Status Card & Metrics
                ModerationStatusCard(overview: overview),

                const SizedBox(height: AppSpacing.md),

                // 2. Active Restrictions Alert
                ActiveRestrictionsBanner(
                  restrictions: state.activeRestrictions.isNotEmpty
                      ? state.activeRestrictions
                      : overview.activeRestrictions,
                ),

                // 3. Active Penalties with Quick Appeal
                if (overview.activePenalties.isNotEmpty) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.moderationActivePenalties,
                        style: AppTextStyles.w700_16.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                      TextButton(
                        onPressed: () => _tabController.animateTo(2),
                        child: Text(
                          'View All',
                          style: AppTextStyles.w600_12.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  ...overview.activePenalties.map((penalty) {
                    final hasAppeal = overview.activeAppeals.any(
                      (a) => a.penaltyId == penalty.id,
                    );
                    return Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                      child: PenaltyItemCard(
                        penalty: penalty,
                        hasActiveAppeal: hasAppeal,
                        onAppealTap: hasAppeal
                            ? null
                            : () => SubmitAppealSheet.show(
                                  context,
                                  penalty: penalty,
                                  onAppealSubmitted: () {
                                    context
                                        .read<ModerationOverviewCubit>()
                                        .loadOverview(isRefresh: true);
                                  },
                                ),
                      ),
                    );
                  }),
                  const SizedBox(height: AppSpacing.sm),
                ],

                // 4. Recent Violations
                if (overview.recentViolations.isNotEmpty) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.moderationRecentViolations,
                        style: AppTextStyles.w700_16.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                      TextButton(
                        onPressed: () => _tabController.animateTo(1),
                        child: Text(
                          'View All',
                          style: AppTextStyles.w600_12.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  ...overview.recentViolations.map((violation) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                      child: ViolationItemCard(violation: violation,isViolation: false,),
                    );
                  }),
                ],

                // 5. Active Appeals
                if (overview.activeAppeals.isNotEmpty) ...[
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.moderationActiveAppeals,
                        style: AppTextStyles.w700_16.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                      TextButton(
                        onPressed: () => _tabController.animateTo(3),
                        child: Text(
                          'View All',
                          style: AppTextStyles.w600_12.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  ...overview.activeAppeals.map((appeal) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                      child: AppealItemCard(
                        appeal: appeal,
                        onTap: () =>
                            AppealDetailsSheet.show(context, appeal: appeal),
                      ),
                    );
                  }),
                ],

                const SizedBox(height: AppSpacing.xxl),
              ],
            ),
          ),
        );
      },
    );
  }

  // ─── 2. VIOLATIONS TAB ────────────────────────────────────────────────────────
  Widget _buildViolationsTab(BuildContext context, bool isDark, S l10n) {
    return BlocBuilder<ViolationsCubit, ViolationsState>(
      builder: (context, state) {
        if (state.status == ViolationsStatus.loading &&
            state.violations.isEmpty) {
          return const ModerationListShimmer();
        }

        if (state.status == ViolationsStatus.failure &&
            state.violations.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<ViolationsCubit>()
                  .getViolations(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.error_outline_rounded,
                      title: l10n.commonError,
                      description: state.errorMessage ?? l10n.errorSomethingWentWrong,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        if (state.violations.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<ViolationsCubit>()
                  .getViolations(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.verified_user_outlined,
                      title: l10n.moderationNoViolations,
                      description: l10n.moderationNoViolationsDesc,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            await context
                .read<ViolationsCubit>()
                .getViolations(isRefresh: true);
          },
          child: ListView.separated(
            controller: _violationsScrollCtrl,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount:
                state.violations.length + (state.status == ViolationsStatus.loadingMore ? 1 : 0),
            separatorBuilder: (_, _) => SizedBox(height: 10.h),
            itemBuilder: (context, index) {
              if (index == state.violations.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(AppSpacing.md),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final violation = state.violations[index];
              return ViolationItemCard(violation: violation,isViolation: true,);
            },
          ),
        );
      },
    );
  }

  // ─── 3. PENALTIES TAB ─────────────────────────────────────────────────────────
  Widget _buildPenaltiesTab(BuildContext context, bool isDark, S l10n) {
    return BlocBuilder<PenaltiesCubit, PenaltiesState>(
      builder: (context, state) {
        if (state.status == PenaltiesStatus.loading &&
            state.penalties.isEmpty) {
          return const ModerationListShimmer();
        }

        if (state.status == PenaltiesStatus.failure &&
            state.penalties.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<PenaltiesCubit>()
                  .getPenalties(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.error_outline_rounded,
                      title: l10n.commonError,
                      description: state.errorMessage ?? l10n.errorSomethingWentWrong,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        if (state.penalties.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<PenaltiesCubit>()
                  .getPenalties(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.check_circle_outline_rounded,
                      title: l10n.moderationNoPenalties,
                      description: l10n.moderationNoPenaltiesDesc,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        final appeals = context.watch<AppealsCubit>().state.appeals;

        return RefreshIndicator(
          onRefresh: () async {
            await context
                .read<PenaltiesCubit>()
                .getPenalties(isRefresh: true);
          },
          child: ListView.separated(
            controller: _penaltiesScrollCtrl,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount:
                state.penalties.length + (state.status == PenaltiesStatus.loadingMore ? 1 : 0),
            separatorBuilder: (_, _) => SizedBox(height: 10.h),
            itemBuilder: (context, index) {
              if (index == state.penalties.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(AppSpacing.md),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final penalty = state.penalties[index];
              final hasAppeal = appeals.any(
                (a) => a.penaltyId == penalty.id,
              );

              return PenaltyItemCard(
                penalty: penalty,
                hasActiveAppeal: hasAppeal,
                onAppealTap: hasAppeal
                    ? null
                    : () => SubmitAppealSheet.show(
                          context,
                          penalty: penalty,
                          onAppealSubmitted: () {
                            context
                                .read<PenaltiesCubit>()
                                .getPenalties(isRefresh: true);
                            context
                                .read<AppealsCubit>()
                                .getAppeals(isRefresh: true);
                          },
                        ),
              );
            },
          ),
        );
      },
    );
  }

  // ─── 4. APPEALS TAB ───────────────────────────────────────────────────────────
  Widget _buildAppealsTab(BuildContext context, bool isDark, S l10n) {
    return BlocBuilder<AppealsCubit, AppealsState>(
      builder: (context, state) {
        if (state.status == AppealsStatus.loading && state.appeals.isEmpty) {
          return const ModerationListShimmer();
        }

        if (state.status == AppealsStatus.failure && state.appeals.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<AppealsCubit>()
                  .getAppeals(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.error_outline_rounded,
                      title: l10n.commonError,
                      description: state.errorMessage ?? l10n.errorSomethingWentWrong,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        if (state.appeals.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<AppealsCubit>()
                  .getAppeals(isRefresh: true);
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ModerationEmptyState(
                      icon: Icons.rate_review_outlined,
                      title: l10n.moderationNoAppeals,
                      description: l10n.moderationNoAppealsDesc,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            await context
                .read<AppealsCubit>()
                .getAppeals(isRefresh: true);
          },
          child: ListView.separated(
            controller: _appealsScrollCtrl,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount:
                state.appeals.length + (state.status == AppealsStatus.loadingMore ? 1 : 0),
            separatorBuilder: (_, _) => SizedBox(height: 10.h),
            itemBuilder: (context, index) {
              if (index == state.appeals.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(AppSpacing.md),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final appeal = state.appeals[index];
              return AppealItemCard(
                appeal: appeal,
                onTap: () => AppealDetailsSheet.show(context, appeal: appeal),
              );
            },
          ),
        );
      },
    );
  }
}
