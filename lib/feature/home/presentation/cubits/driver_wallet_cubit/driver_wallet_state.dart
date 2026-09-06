import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';

part 'driver_wallet_state.freezed.dart';

enum DriverWalletStatus { initial, loading, success, failure }

@freezed
class DriverWalletState with _$DriverWalletState {
  const factory DriverWalletState({
    @Default(DriverWalletStatus.initial) DriverWalletStatus status,
    DriverWalletSummaryEntity? walletSummary,
    String? errorMessage,
  }) = _DriverWalletState;
}
