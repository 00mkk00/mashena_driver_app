// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

enum DriverApprovalRequestStatus {
  @JsonValue('submitted')
  submitted,
  @JsonValue('underReview')
  under_review,
  @JsonValue('approved')
  approved,
  @JsonValue('rejected')
  rejected,
  @JsonValue('blocked')
  blocked;

  static DriverApprovalRequestStatus fromJson(dynamic json) {
    if (json is String) {
      switch (json.toLowerCase()) {
        case 'submitted':
          return DriverApprovalRequestStatus.submitted;
        case 'under_review':
          return DriverApprovalRequestStatus.under_review;
        case 'approved':
          return DriverApprovalRequestStatus.approved;
        case 'rejected':
          return DriverApprovalRequestStatus.rejected;
        case 'blocked':
          return DriverApprovalRequestStatus.blocked;
      }
    }
    return DriverApprovalRequestStatus.submitted;
  }

  String get name {
    switch (this) {
      case DriverApprovalRequestStatus.submitted:
        return 'submitted';
      case DriverApprovalRequestStatus.under_review:
        return 'under review';
      case DriverApprovalRequestStatus.approved:
        return 'approved';
      case DriverApprovalRequestStatus.rejected:
        return 'rejected';
      case DriverApprovalRequestStatus.blocked:
        return 'blocked';
    }
  }
}
