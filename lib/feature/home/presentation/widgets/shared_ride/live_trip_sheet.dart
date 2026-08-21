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
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

class LiveTripSheet extends StatelessWidget {
  const LiveTripSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<SharedRideCubit, SharedRideState>(
      builder: (context, state) {
        final ride = state.ride;
        final passengers = ride?.passengers ?? [];
        final allDroppedOff =
            passengers.isNotEmpty &&
            passengers.every((p) => p.status.toLowerCase() == 'dropped_off');

        return Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: AppSpacing.md.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).sharedTripInProgress,
                        style: AppTextStyles.w700_18.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                      Text(
                        S.of(context).sharedEnRouteDestinations,
                        style: AppTextStyles.w400_14.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                ],
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
                      S.of(context).sharedNoActivePassengers,
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
                    final p = passengers[index];
                    return _buildDropOffTile(context, p, state, isDark);
                  },
                ),

              SizedBox(height: AppSpacing.md.h),
              ElevatedButton(
                onPressed: state.isCompleting || !allDroppedOff
                    ? null
                    : () =>
                          context.read<SharedRideCubit>().completeSharedRide(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.danger,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                  disabledBackgroundColor: isDark
                      ? AppColors.surfaceVariantDark
                      : AppColors.surfaceVariant,
                ),
                child: state.isCompleting
                    ? const CupertinoActivityIndicator(color: Colors.white)
                    : Text(
                        S.of(context).sharedEndTrip,
                        style: AppTextStyles.w600_16.copyWith(
                          color: allDroppedOff
                              ? Colors.white
                              : AppColors.textGrey,
                        ),
                      ),
              ),
              SizedBox(height: AppSpacing.md.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDropOffTile(
    BuildContext context,
    SharedRidePassengerEntity p,
    SharedRideState state,
    bool isDark,
  ) {
    final isDroppedOff = p.status.toLowerCase() == 'dropped_off';
    final isDroppingOffThis = state.droppingOffPassengers.contains(p.id);

    return Container(
      margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(
          color: isDroppedOff ? AppColors.textGrey : Colors.transparent,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: isDroppedOff ? AppColors.textGrey : AppColors.primaryColor,
          ),
          SizedBox(width: AppSpacing.md.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  p.riderName.isNotEmpty
                      ? p.riderName
                      : S.of(context).sharedPassengerNumber(p.riderProfileId),
                  style: AppTextStyles.w600_16.copyWith(
                    color: isDroppedOff
                        ? AppColors.textGrey
                        : (isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface),
                    decoration: isDroppedOff
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  S.of(context).sharedSeatsCount(p.activeSeats),
                  style: AppTextStyles.w400_12.copyWith(
                    color: isDroppedOff
                        ? AppColors.textGrey
                        : (isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey),
                  ),
                ),
              ],
            ),
          ),
          if (isDroppingOffThis)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CupertinoActivityIndicator(),
            )
          else if (!isDroppedOff)
            TextButton(
              onPressed: () {
                final mapPos = context.read<MapCubit>().state.currentPosition;
                final lat = mapPos?.latitude ?? 30.0444;
                final lng = mapPos?.longitude ?? 31.2357;

                if (p.activeSeats > 1) {
                  _showSeatPickerDialog(
                    context,
                    passenger: p,
                    currentLat: lat,
                    currentLng: lng,
                    isDark: isDark,
                  );
                } else {
                  _performDropOff(
                    context,
                    passenger: p,
                    seatsToDrop: p.activeSeats > 0 ? p.activeSeats : 1,
                    currentLat: lat,
                    currentLng: lng,
                  );
                }
              },
              style: TextButton.styleFrom(foregroundColor: AppColors.danger),
              child: Text(S.of(context).sharedDropOff),
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).sharedDroppedOff,
                  style: const TextStyle(color: AppColors.textGrey),
                ),
                // Text(
                //   S
                //       .of(context)
                //       .sharedFareAmountFormat(
                //         (p.finalFare > 0 ? p.finalFare : p.totalPaidFare)
                //             .toStringAsFixed(0),
                //         S.of(context).commonCurrencySyria,
                //       ),
                //   style: AppTextStyles.w600_14.copyWith(
                //     color: AppColors.success,
                //   ),
                // ),
              ],
            ),
        ],
      ),
    );
  }

  Future<void> _performDropOff(
    BuildContext context, {
    required SharedRidePassengerEntity passenger,
    required int seatsToDrop,
    required double currentLat,
    required double currentLng,
    bool? accountHolderDroppedOff,
  }) async {
    final updated = await context.read<SharedRideCubit>().dropOffPassenger(
      passengerId: passenger.id,
      seatsToDrop: seatsToDrop,
      currentLat: currentLat,
      currentLng: currentLng,
      accountHolderDroppedOff: accountHolderDroppedOff,
    );

    if (updated != null && context.mounted) {
      final fare = updated.finalFare > 0
          ? updated.finalFare
          : (updated.totalPaidFare > 0
                ? updated.totalPaidFare
                : (passenger.finalFare > 0
                      ? passenger.finalFare
                      : passenger.totalPaidFare));

      final fareText = S
          .of(context)
          .sharedFareAmountFormat(
            fare.toStringAsFixed(0),
            S.of(context).commonCurrencySyria,
          );

      final name = passenger.riderName.isNotEmpty
          ? passenger.riderName
          : S.of(context).sharedPassengerNumber(passenger.riderProfileId);

      _showFareDialog(
        context,
        passengerName: name,
        fareText: fareText,
        isDark: Theme.of(context).brightness == Brightness.dark,
      );
    }
  }

  void _showFareDialog(
    BuildContext context, {
    required String passengerName,
    required String fareText,
    required bool isDark,
  }) {
    showDialog<void>(
      context: context,
      builder: (dialogCtx) {
        return AlertDialog(
          backgroundColor: isDark ? AppColors.surfaceVariantDark : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg.r),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.success.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.success,
                  size: 48.r,
                ),
              ),
              SizedBox(height: AppSpacing.md.h),
              Text(
                S.of(context).sharedDroppedOff,
                style: AppTextStyles.w700_18.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
              SizedBox(height: AppSpacing.xs.h),
              Text(
                passengerName,
                style: AppTextStyles.w400_14.copyWith(
                  color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                ),
              ),
              SizedBox(height: AppSpacing.md.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.md.w,
                  vertical: AppSpacing.sm.h,
                ),
                decoration: BoxDecoration(
                  color: isDark ? AppColors.cardDark : AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(AppRadius.md.r),
                ),
                child: Column(
                  children: [
                    Text(
                      S.of(context).tripSummaryTotalFare,
                      style: AppTextStyles.w400_12.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      fareText,
                      style: AppTextStyles.w700_20.copyWith(
                        color: AppColors.success,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.of(dialogCtx).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                ),
                child: Text(S.of(context).commonDone),
              ),
            ),
          ],
        );
      },
    );
  }

  /// Shows a dialog that lets the driver choose how many seats to drop off
  /// when a passenger occupies more than one seat.
  void _showSeatPickerDialog(
    BuildContext context, {
    required SharedRidePassengerEntity passenger,
    required double currentLat,
    required double currentLng,
    required bool isDark,
  }) {
    int selected = passenger.activeSeats; // default → drop all seats
    bool accountHolderDroppedOff = true; // default → account holder dropped off

    showDialog<void>(
      context: context,
      builder: (dialogCtx) {
        return StatefulBuilder(
          builder: (dialogCtx, setDialogState) {
            return AlertDialog(
              backgroundColor: isDark
                  ? AppColors.surfaceVariantDark
                  : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.lg.r),
              ),
              title: Text(
                S.of(context).sharedDropOff,
                style: AppTextStyles.w700_18.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Seat toggle buttons ───────────────────────────────
                  Wrap(
                    spacing: 8.w,
                    runSpacing: 8.h,
                    children: List.generate(passenger.activeSeats, (i) {
                      final value = i + 1;
                      final isSelected = selected == value;
                      return GestureDetector(
                        onTap: () => setDialogState(() => selected = value),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          width: 44.r,
                          height: 44.r,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primaryColor
                                : (isDark
                                      ? AppColors.surfaceVariantDark
                                      : AppColors.surfaceVariant),
                            borderRadius: BorderRadius.circular(AppRadius.md.r),
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : (isDark
                                        ? AppColors.textGreyDark
                                        : AppColors.textGrey),
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            '$value',
                            style: AppTextStyles.w600_16.copyWith(
                              color: isSelected
                                  ? Colors.white
                                  : (isDark
                                        ? AppColors.onSurfaceDark
                                        : AppColors.onSurface),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: AppSpacing.md.h),
                  // ── Account Holder Dropped Off Toggle ─────────────────
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm.w,
                      vertical: AppSpacing.xs.h,
                    ),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.surfaceVariantDark
                          : AppColors.surfaceVariant,
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            S.of(context).sharedAccountHolderDroppedOff,
                            style: AppTextStyles.w500_14.copyWith(
                              color: isDark
                                  ? AppColors.onSurfaceDark
                                  : AppColors.onSurface,
                            ),
                          ),
                        ),
                        Switch.adaptive(
                          value: accountHolderDroppedOff,
                          activeTrackColor: AppColors.primaryColor,
                          onChanged: (val) {
                            setDialogState(() => accountHolderDroppedOff = val);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.of(dialogCtx).pop(),
                    child: Text(
                      S.of(context).commonCancel,
                      style: TextStyle(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(dialogCtx).pop();
                    _performDropOff(
                      context,
                      passenger: passenger,
                      seatsToDrop: selected,
                      currentLat: currentLat,
                      currentLng: currentLng,
                      accountHolderDroppedOff: accountHolderDroppedOff,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.danger,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                    ),
                  ),
                  child: Text(S.of(context).sharedDropOff),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
