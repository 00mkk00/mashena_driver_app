enum AccountStatus {
  active('ACTIVE'),
  suspended('SUSPENDED'),
  banned('BANNED'),
  warning('WARNING'),
  unknown('UNKNOWN');

  final String value;
  const AccountStatus(this.value);

  static AccountStatus fromJson(String? value) {
    if (value == null) return AccountStatus.unknown;
    return AccountStatus.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => AccountStatus.unknown,
    );
  }
}

enum PenaltyTargetRole {
  driver('DRIVER'),
  rider('RIDER'),
  both('BOTH'),
  unknown('UNKNOWN');

  final String value;
  const PenaltyTargetRole(this.value);

  static PenaltyTargetRole fromJson(String? value) {
    if (value == null) return PenaltyTargetRole.unknown;
    return PenaltyTargetRole.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => PenaltyTargetRole.unknown,
    );
  }
}

enum ModerationSeverity {
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH'),
  critical('CRITICAL'),
  unknown('UNKNOWN');

  final String value;
  const ModerationSeverity(this.value);

  static ModerationSeverity fromJson(String? value) {
    if (value == null) return ModerationSeverity.unknown;
    return ModerationSeverity.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => ModerationSeverity.unknown,
    );
  }
}

enum PenaltyType {
  warning('WARNING'),
  temporarySuspension('TEMPORARY_SUSPENSION'),
  permanentBan('PERMANENT_BAN'),
  unknown('UNKNOWN');

  final String value;
  const PenaltyType(this.value);

  static PenaltyType fromJson(String? value) {
    if (value == null) return PenaltyType.unknown;
    return PenaltyType.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => PenaltyType.unknown,
    );
  }
}

enum RestrictionType {
  acceptTrip('ACCEPT_TRIP'),
  fullAccount('FULL_ACCOUNT'),
  createRide('CREATE_RIDE'),
  createRideRequest('CREATE_RIDE_REQUEST'),
  goOnline('GO_ONLINE'),
  sharedRide('SHARED_RIDE'),
  walletTransfer('WALLET_TRANSFER'),
  unknown('UNKNOWN');

  final String value;
  const RestrictionType(this.value);

  static RestrictionType fromJson(String? value) {
    if (value == null) return RestrictionType.unknown;
    return RestrictionType.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => RestrictionType.unknown,
    );
  }
}

enum ModerationItemStatus {
  active('ACTIVE'),
  expired('EXPIRED'),
  revoked('REVOKED'),
  processed('PROCESSED'),
  pending('PENDING'),
  unknown('UNKNOWN');

  final String value;
  const ModerationItemStatus(this.value);

  static ModerationItemStatus fromJson(String? value) {
    if (value == null) return ModerationItemStatus.unknown;
    return ModerationItemStatus.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => ModerationItemStatus.unknown,
    );
  }
}

enum AppealStatus {
  pending('PENDING'),
  underReview('UNDER_REVIEW'),
  approved('APPROVED'),
  rejected('REJECTED'),
  unknown('UNKNOWN');

  final String value;
  const AppealStatus(this.value);

  static AppealStatus fromJson(String? value) {
    if (value == null) return AppealStatus.unknown;
    return AppealStatus.values.firstWhere(
      (e) => e.value.toUpperCase() == value.toUpperCase(),
      orElse: () => AppealStatus.unknown,
    );
  }
}
