import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/services/location_geocoding_service.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/feature/home/data/params/create_shared_ride_params.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

class CreateRideSheet extends StatefulWidget {
  const CreateRideSheet({super.key});

  @override
  State<CreateRideSheet> createState() => _CreateRideSheetState();
}

class _CreateRideSheetState extends State<CreateRideSheet> {
  double? _originLat;
  double? _originLng;
  final _originAddressController = TextEditingController();

  double? _destLat;
  double? _destLng;
  final _destAddressController = TextEditingController();

  final _notesController = TextEditingController();

  int _maxPassengers = 4;
  DateTime _departureTime = DateTime.now().add(const Duration(minutes: 15));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final mapState = context.read<MapCubit>().state;
      if (mapState.draftOrigin != null) {
        setState(() {
          _originLat = mapState.draftOrigin!.lat;
          _originLng = mapState.draftOrigin!.lng;
          _originAddressController.text = mapState.draftOrigin!.address;
        });
        _resolveAddressIfNeeded(
          lat: mapState.draftOrigin!.lat,
          lng: mapState.draftOrigin!.lng,
          controller: _originAddressController,
        );
      } else {
        _useCurrentGpsForOrigin();
      }

      if (mapState.draftDestination != null) {
        setState(() {
          _destLat = mapState.draftDestination!.lat;
          _destLng = mapState.draftDestination!.lng;
          _destAddressController.text = mapState.draftDestination!.address;
        });
        _resolveAddressIfNeeded(
          lat: mapState.draftDestination!.lat,
          lng: mapState.draftDestination!.lng,
          controller: _destAddressController,
        );
      }
    });
  }

  @override
  void dispose() {
    _originAddressController.dispose();
    _destAddressController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  bool get _isFormValid {
    return _originLat != null &&
        _originLng != null &&
        _originAddressController.text.trim().isNotEmpty &&
        _destLat != null &&
        _destLng != null &&
        _destAddressController.text.trim().isNotEmpty;
  }

  Future<void> _resolveAddressIfNeeded({
    required double lat,
    required double lng,
    required TextEditingController controller,
    String? defaultFallback,
  }) async {
    final fallback = defaultFallback ?? S.of(context).sharedCurrentLocation;
    if (controller.text.isEmpty ||
        controller.text.startsWith('Current Location') ||
        controller.text.startsWith('Picked Location') ||
        controller.text.contains('Fetching address')) {
      controller.text = 'Fetching address...';
      final addressName = await getIt<LocationGeocodingService>()
          .getAddressFromCoordinates(lat, lng);
      if (mounted) {
        setState(() {
          controller.text = addressName ?? fallback;
        });
      }
    }
  }

  void _useCurrentGpsForOrigin() {
    final mapState = context.read<MapCubit>().state;
    final currentPos = mapState.currentPosition;
    if (currentPos != null) {
      setState(() {
        _originLat = currentPos.latitude;
        _originLng = currentPos.longitude;
      });
      _resolveAddressIfNeeded(
        lat: currentPos.latitude,
        lng: currentPos.longitude,
        controller: _originAddressController,
      );
    } else {
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
          .then((pos) {
            if (mounted) {
              setState(() {
                _originLat = pos.latitude;
                _originLng = pos.longitude;
              });
              _resolveAddressIfNeeded(
                lat: pos.latitude,
                lng: pos.longitude,
                controller: _originAddressController,
              );
            }
          })
          .catchError((_) {});
    }
  }

  void _useCurrentGpsForDest() {
    final mapState = context.read<MapCubit>().state;
    final currentPos = mapState.currentPosition;
    if (currentPos != null) {
      setState(() {
        _destLat = currentPos.latitude;
        _destLng = currentPos.longitude;
      });
      _resolveAddressIfNeeded(
        lat: currentPos.latitude,
        lng: currentPos.longitude,
        controller: _destAddressController,
      );
    } else {
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
          .then((pos) {
            if (mounted) {
              setState(() {
                _destLat = pos.latitude;
                _destLng = pos.longitude;
              });
              _resolveAddressIfNeeded(
                lat: pos.latitude,
                lng: pos.longitude,
                controller: _destAddressController,
              );
            }
          })
          .catchError((_) {});
    }
  }

  void _pickOriginOnMap() {
    final current = (_originLat != null && _originLng != null)
        ? LatLng(_originLat!, _originLng!)
        : null;
    context.read<MapCubit>().startLocationPicking(
      MapPickerTarget.origin,
      initialLocation: current,
    );
  }

  void _pickDestOnMap() {
    final current = (_destLat != null && _destLng != null)
        ? LatLng(_destLat!, _destLng!)
        : null;
    context.read<MapCubit>().startLocationPicking(
      MapPickerTarget.destination,
      initialLocation: current,
    );
  }

  void _onCreateRidePressed() {
    if (!_isFormValid) return;

    final params = CreateSharedRideParams(
      origin: SharedRideLocationParams(
        lat: _originLat!,
        lng: _originLng!,
        address: _originAddressController.text.trim(),
      ),
      destination: SharedRideLocationParams(
        lat: _destLat!,
        lng: _destLng!,
        address: _destAddressController.text.trim(),
      ),
      departureTime: _departureTime.toIso8601String(),
      vehicleId: 3, // Default vehicle ID
      maxPassengers: _maxPassengers,
      notes: _notesController.text.trim().isEmpty
          ? null
          : _notesController.text.trim(),
    );

    context.read<SharedRideCubit>().createSharedRide(params);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocListener<MapCubit, MapState>(
      listenWhen: (prev, curr) =>
          prev.draftOrigin != curr.draftOrigin ||
          prev.draftDestination != curr.draftDestination,
      listener: (context, mapState) {
        if (mapState.draftOrigin != null) {
          setState(() {
            _originLat = mapState.draftOrigin!.lat;
            _originLng = mapState.draftOrigin!.lng;
            _originAddressController.text = mapState.draftOrigin!.address;
          });
          _resolveAddressIfNeeded(
            lat: mapState.draftOrigin!.lat,
            lng: mapState.draftOrigin!.lng,
            controller: _originAddressController,
          );
        }
        if (mapState.draftDestination != null) {
          setState(() {
            _destLat = mapState.draftDestination!.lat;
            _destLng = mapState.draftDestination!.lng;
            _destAddressController.text = mapState.draftDestination!.address;
          });
          _resolveAddressIfNeeded(
            lat: mapState.draftDestination!.lat,
            lng: mapState.draftDestination!.lng,
            controller: _destAddressController,
          );
        }
      },
      child: BlocBuilder<SharedRideCubit, SharedRideState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(AppSpacing.md.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 32),
                    Expanded(
                      child: Text(
                        S.of(context).sharedCreateSharedRideTitle,
                        style: AppTextStyles.w700_20.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close_rounded),
                      onPressed: () {
                        context.read<DriverStatusCubit>().exitSharedRide();
                      },
                    ),
                  ],
                ),
                SizedBox(height: AppSpacing.md.h),

                // ── Origin Selection ─────────────────────────────────────
                Text(
                  S.of(context).sharedOrigin,
                  style: AppTextStyles.w600_14.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                SizedBox(height: AppSpacing.xs.h),
                _buildReadOnlyInputField(
                  context: context,
                  label: '',
                  hint: S.of(context).sharedSelectOriginHint,
                  icon: Icons.location_on,
                  isDark: isDark,
                  controller: _originAddressController,
                  onTap: _pickOriginOnMap,
                ),
                SizedBox(height: AppSpacing.xs.h),
                Row(
                  children: [
                    ActionChip(
                      avatar: Icon(
                        Icons.my_location_rounded,
                        size: 16.r,
                        color: AppColors.primaryColor,
                      ),
                      label: Text(S.of(context).sharedCurrentGps),
                      onPressed: _useCurrentGpsForOrigin,
                    ),
                    SizedBox(width: AppSpacing.sm.w),
                    ActionChip(
                      avatar: Icon(
                        Icons.map_rounded,
                        size: 16.r,
                        color: AppColors.primaryColor,
                      ),
                      label: Text(S.of(context).sharedPickOnMap),
                      onPressed: _pickOriginOnMap,
                    ),
                  ],
                ),

                SizedBox(height: AppSpacing.md.h),

                // ── Destination Selection ────────────────────────────────
                Text(
                  S.of(context).sharedDestination,
                  style: AppTextStyles.w600_14.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                SizedBox(height: AppSpacing.xs.h),
                _buildReadOnlyInputField(
                  context: context,
                  label: '',
                  hint: S.of(context).sharedSelectDestinationHint,
                  icon: Icons.flag_rounded,
                  isDark: isDark,
                  controller: _destAddressController,
                  onTap: _pickDestOnMap,
                ),
                SizedBox(height: AppSpacing.xs.h),
                Row(
                  children: [
                    ActionChip(
                      avatar: Icon(
                        Icons.my_location_rounded,
                        size: 16.r,
                        color: AppColors.primaryColor,
                      ),
                      label: Text(S.of(context).sharedCurrentGps),
                      onPressed: _useCurrentGpsForDest,
                    ),
                    SizedBox(width: AppSpacing.sm.w),
                    ActionChip(
                      avatar: Icon(
                        Icons.map_rounded,
                        size: 16.r,
                        color: AppColors.primaryColor,
                      ),
                      label: Text(S.of(context).sharedPickOnMap),
                      onPressed: _pickDestOnMap,
                    ),
                  ],
                ),

                SizedBox(height: AppSpacing.md.h),

                // ── Max Passengers & Departure Time ─────────────────────
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).sharedMaxSeats,
                            style: AppTextStyles.w500_14.copyWith(
                              color: isDark
                                  ? AppColors.textGreyDark
                                  : AppColors.textGrey,
                            ),
                          ),
                          SizedBox(height: AppSpacing.xs.h),
                          DropdownButtonFormField<int>(
                            initialValue: _maxPassengers,
                            dropdownColor: isDark
                                ? AppColors.cardDark
                                : AppColors.cardLight,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 8.h,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  AppRadius.sm.r,
                                ),
                              ),
                            ),
                            items: [1, 2, 3, 4, 5, 6].map((seatCount) {
                              return DropdownMenuItem(
                                value: seatCount,
                                child: Text(
                                  S.of(context).sharedSeatsOption(seatCount),
                                ),
                              );
                            }).toList(),
                            onChanged: (val) {
                              if (val != null) {
                                setState(() => _maxPassengers = val);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: AppSpacing.sm.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).sharedDepartureTime,
                            style: AppTextStyles.w500_14.copyWith(
                              color: isDark
                                  ? AppColors.textGreyDark
                                  : AppColors.textGrey,
                            ),
                          ),
                          SizedBox(height: AppSpacing.xs.h),
                          InkWell(
                            onTap: () async {
                              final picked = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.fromDateTime(
                                  _departureTime,
                                ),
                              );
                              if (picked != null) {
                                final now = DateTime.now();
                                setState(() {
                                  _departureTime = DateTime(
                                    now.year,
                                    now.month,
                                    now.day,
                                    picked.hour,
                                    picked.minute,
                                  );
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 12.h,
                              ),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? AppColors.surfaceVariantDark
                                    : AppColors.surfaceVariant,
                                borderRadius: BorderRadius.circular(
                                  AppRadius.sm.r,
                                ),
                                border: Border.all(
                                  color: isDark
                                      ? AppColors.dividerDark
                                      : AppColors.divider,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 18.r,
                                    color: AppColors.primaryColor,
                                  ),
                                  SizedBox(width: 6.w),
                                  Expanded(
                                    child: Text(
                                      '${_departureTime.hour.toString().padLeft(2, '0')}:${_departureTime.minute.toString().padLeft(2, '0')}',
                                      style: AppTextStyles.w600_14.copyWith(
                                        color: isDark
                                            ? AppColors.onSurfaceDark
                                            : AppColors.onSurface,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: AppSpacing.md.h),

                // ── Notes ────────────────────────────────────────────────
                _buildEditableInputField(
                  context: context,
                  label: S.of(context).sharedNotes,
                  hint: S.of(context).sharedNotesHint,
                  icon: Icons.note,
                  isDark: isDark,
                  controller: _notesController,
                ),

                SizedBox(height: AppSpacing.lg.h),

                // ── Submit Button ────────────────────────────────────────
                ElevatedButton(
                  onPressed: (_isFormValid && !state.isCreating)
                      ? _onCreateRidePressed
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    disabledBackgroundColor: isDark
                        ? AppColors.surfaceVariantDark
                        : AppColors.divider,
                    foregroundColor: Colors.white,
                    disabledForegroundColor: isDark
                        ? AppColors.textGreyDark
                        : AppColors.textGrey,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                    ),
                  ),
                  child: state.isCreating
                      ? const CupertinoActivityIndicator(color: Colors.white)
                      : Text(
                          S.of(context).sharedCreateAndOpenLobby,
                          style: AppTextStyles.w600_16.copyWith(
                            color: _isFormValid
                                ? Colors.white
                                : (isDark
                                      ? AppColors.textGreyDark
                                      : AppColors.textGrey),
                          ),
                        ),
                ),
                SizedBox(height: AppSpacing.md.h),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildReadOnlyInputField({
    required BuildContext context,
    required String label,
    required String hint,
    required IconData icon,
    required bool isDark,
    required TextEditingController controller,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...[
          Text(
            label,
            style: AppTextStyles.w500_14.copyWith(
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
            ),
          ),
          SizedBox(height: AppSpacing.xs.h),
        ],
        TextField(
          controller: controller,
          readOnly: true,
          onTap: onTap,
          style: AppTextStyles.w400_14.copyWith(
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyles.w400_14.copyWith(
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
            ),
            prefixIcon: Icon(icon, color: AppColors.primaryColor, size: 20.r),
            filled: true,
            fillColor: isDark
                ? AppColors.surfaceVariantDark
                : AppColors.surfaceVariant,
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSpacing.sm.w,
              vertical: AppSpacing.sm.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.sm.r),
              borderSide: BorderSide(
                color: isDark ? AppColors.dividerDark : AppColors.divider,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.sm.r),
              borderSide: BorderSide(
                color: isDark ? AppColors.dividerDark : AppColors.divider,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEditableInputField({
    required BuildContext context,
    required String label,
    required String hint,
    required IconData icon,
    required bool isDark,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.w500_14.copyWith(
            color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
          ),
        ),
        SizedBox(height: AppSpacing.xs.h),
        TextField(
          controller: controller,
          style: AppTextStyles.w400_14.copyWith(
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyles.w400_14.copyWith(
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
            ),
            prefixIcon: Icon(
              icon,
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
              size: 20.r,
            ),
            filled: true,
            fillColor: isDark
                ? AppColors.surfaceVariantDark
                : AppColors.surfaceVariant,
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSpacing.sm.w,
              vertical: AppSpacing.sm.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.sm.r),
              borderSide: BorderSide(
                color: isDark ? AppColors.dividerDark : AppColors.divider,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.sm.r),
              borderSide: BorderSide(
                color: isDark ? AppColors.dividerDark : AppColors.divider,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
