import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';

class ModerationOverviewShimmer extends StatelessWidget {
  const ModerationOverviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Status Card
          const ShimmerCard(height: 140, borderRadius: 16),
          const SizedBox(height: AppSpacing.md),
          // Stats Row
          Row(
            children: const [
              Expanded(child: ShimmerCard(height: 80, borderRadius: 12)),
              SizedBox(width: AppSpacing.sm),
              Expanded(child: ShimmerCard(height: 80, borderRadius: 12)),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: const [
              Expanded(child: ShimmerCard(height: 80, borderRadius: 12)),
              SizedBox(width: AppSpacing.sm),
              Expanded(child: ShimmerCard(height: 80, borderRadius: 12)),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          // Section Title
          const ShimmerCard(height: 20, width: 150, borderRadius: 6),
          const SizedBox(height: AppSpacing.md),
          // Recent items
          const ShimmerCard(height: 100, borderRadius: 12),
          const SizedBox(height: AppSpacing.sm),
          const ShimmerCard(height: 100, borderRadius: 12),
        ],
      ),
    );
  }
}

class ModerationListShimmer extends StatelessWidget {
  final int count;

  const ModerationListShimmer({super.key, this.count = 5});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.md),
      itemCount: count,
      separatorBuilder: (_, _) => SizedBox(height: 12.h),
      itemBuilder: (_, _) => const ShimmerCard(
        height: 110,
        borderRadius: 14,
      ),
    );
  }
}
