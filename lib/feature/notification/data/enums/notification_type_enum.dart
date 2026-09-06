// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

enum NotificationType {
  @JsonValue('notification.trip.cancelled')
  tripCancelled,
  @JsonValue('notification.wallet.deposit')
  walletDeposit,
  @JsonValue('notification.wallet.transfer')
  walletTransfer,
  @JsonValue('notification.driver.approved')
  driverApproved,
  @JsonValue('unknown')
  unknown;

  static NotificationType fromJson(dynamic json) {
    if (json is String) {
      switch (json) {
        case 'notification.trip.cancelled':
          return NotificationType.tripCancelled;
        case 'notification.wallet.deposit':
          return NotificationType.walletDeposit;
        case 'notification.wallet.transfer':
          return NotificationType.walletTransfer;
        case 'notification.driver.approved':
          return NotificationType.driverApproved;
      }
      if (json.startsWith('notification.wallet.')) {
        return NotificationType.walletTransfer;
      }
    }
    return NotificationType.unknown;
  }
}
