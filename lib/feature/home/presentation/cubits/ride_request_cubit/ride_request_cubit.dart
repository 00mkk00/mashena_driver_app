import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';

class RideRequestCubit extends Cubit<RideRequestState> {
  RideRequestCubit() : super(const RideRequestState());

  void showIncomingRequest() {
    emit(
      state.copyWith(status: RideRequestStatus.incoming, countdownSeconds: 30),
    );
    // TODO: Start countdown timer & play notification sound
    // TODO: Integrate local notifications package
  }

  void acceptRequest() {
    emit(
      state.copyWith(
        status: RideRequestStatus.accepted,
        isBottomSheetExpanded: true,
      ),
    );
  }

  void rejectRequest() {
    emit(
      state.copyWith(
        status: RideRequestStatus.rejected,
        isBottomSheetExpanded: false,
      ),
    );
    Future.delayed(const Duration(milliseconds: 500), () {
      emit(state.copyWith(status: RideRequestStatus.idle));
    });
  }

  void toggleBottomSheet() {
    emit(state.copyWith(isBottomSheetExpanded: !state.isBottomSheetExpanded));
  }
}
