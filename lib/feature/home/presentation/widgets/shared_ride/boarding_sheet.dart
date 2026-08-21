import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

class BoardingSheet extends StatelessWidget {
  const BoardingSheet({super.key});

  bool _isOnBoardStatus(String status) {
    final s = status.toLowerCase();
    return s == 'onboard' ||
        s == 'on_board' ||
        s == 'onboarded' ||
        s == 'checked_in' ||
        s == 'checkedin';
  }

  bool _isRemovedStatus(String status) {
    final s = status.toLowerCase();
    return s == 'removed' ||
        s == 'left' ||
        s == 'canceled' ||
        s == 'cancelled' ||
        s == 'dropped_off' ||
        s == 'droppedoff';
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<SharedRideCubit, SharedRideState>(
      builder: (context, state) {
        final ride = state.ride;
        final passengers = ride?.passengers ?? [];
        final hasOnBoardedPassenger = passengers.any(
          (p) => _isOnBoardStatus(p.status),
        );

        return Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).sharedBoardingPassengers,
                    style: AppTextStyles.w700_20.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurface,
                    ),
                  ),
                  Text(
                    S
                        .of(context)
                        .sharedBoardedCount(
                          passengers
                              .where((p) => _isOnBoardStatus(p.status))
                              .length,
                          passengers.length,
                        ),
                    style: AppTextStyles.w600_14.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.sm.h),
              Text(
                S.of(context).sharedMarkPassengersInstruction,
                style: AppTextStyles.w400_14.copyWith(
                  color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                ),
              ),
              SizedBox(height: AppSpacing.lg.h),

              if (passengers.isEmpty)
                Container(
                  padding: EdgeInsets.all(AppSpacing.md.r),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.surfaceVariantDark
                        : AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                  child: Center(
                    child: Text(
                      S.of(context).sharedNoPassengersToBoard,
                      style: AppTextStyles.w400_14.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: passengers.length,
                  itemBuilder: (context, index) {
                    final passenger = passengers[index];
                    return _buildPassengerBoardingTile(
                      context,
                      passenger,
                      state,
                      isDark,
                    );
                  },
                ),

              SizedBox(height: AppSpacing.md.h),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: state.isCancelling
                          ? null
                          : () {
                              context
                                  .read<SharedRideCubit>()
                                  .cancelSharedRide();
                            },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.danger,
                        side: const BorderSide(color: AppColors.danger),
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.md.r),
                        ),
                      ),
                      child: state.isCancelling
                          ? const CupertinoActivityIndicator(
                              color: AppColors.danger,
                            )
                          : Text(
                              S.of(context).sharedCancelRide,
                              style: AppTextStyles.w600_16,
                            ),
                    ),
                  ),
                  SizedBox(width: AppSpacing.md.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (state.isStarting || !hasOnBoardedPassenger)
                          ? null
                          : () => context
                                .read<SharedRideCubit>()
                                .startSharedRide(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.md.r),
                        ),
                        disabledBackgroundColor: isDark
                            ? AppColors.surfaceVariantDark
                            : AppColors.surfaceVariant,
                      ),
                      child: state.isStarting
                          ? const CupertinoActivityIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              S.of(context).sharedStartTrip,
                              style: AppTextStyles.w600_16.copyWith(
                                color: hasOnBoardedPassenger
                                    ? Colors.white
                                    : (isDark
                                          ? AppColors.textGreyDark
                                          : AppColors.textGrey),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.md.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPassengerBoardingTile(
    BuildContext context,
    SharedRidePassengerEntity p,
    SharedRideState state,
    bool isDark,
  ) {
    final isOnBoard = _isOnBoardStatus(p.status);
    final isRemoved = _isRemovedStatus(p.status);
    final isBoardingThis = state.onBoardingPassengers.contains(p.id);
    final isRemovingThis = state.removingPassengers.contains(p.id);

    return Container(
      margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(
          color: isOnBoard ? AppColors.success : Colors.transparent,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: isOnBoard
                ? AppColors.success.withValues(alpha: 0.2)
                : AppColors.primaryColor.withValues(alpha: 0.2),
            child: Icon(
              isOnBoard ? Icons.check : Icons.person,
              color: isOnBoard ? AppColors.success : AppColors.primaryColor,
            ),
          ),
          SizedBox(width: AppSpacing.md.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  p.riderName.isNotEmpty
                      ? p.riderName
                      : S.of(context).sharedPassengerNumber(p.riderProfileId),
                  style: AppTextStyles.w600_16.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                Text(
                  '${S.of(context).sharedStatus(p.status)} • ${S.of(context).sharedSeatsCount(p.seatsNeeded)}',
                  style: AppTextStyles.w400_12.copyWith(
                    color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),

          if (isBoardingThis || isRemovingThis)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CupertinoActivityIndicator(),
            )
          else if (!isRemoved) ...[
            if (!isOnBoard)
              TextButton(
                onPressed: () =>
                    context.read<SharedRideCubit>().onBoardPassenger(p.id),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primaryColor,
                ),
                child: Text(S.of(context).sharedOnBoard),
              )
            else
              const Icon(Icons.check_circle, color: AppColors.success),

            // Remove button is hidden once the passenger is onboarded
            if (!isOnBoard)
              IconButton(
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: AppColors.danger,
                  size: 20.r,
                ),
                onPressed: () =>
                    context.read<SharedRideCubit>().removePassenger(p.id),
                tooltip: S.of(context).sharedRemove,
              ),
          ],
        ],
      ),
    );
  }
}
