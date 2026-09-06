class SubmitAppealParams {
  final int penaltyId;
  final String reason;
  final String? evidence;

  const SubmitAppealParams({
    required this.penaltyId,
    required this.reason,
    this.evidence,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'reason': reason,
    };
    if (evidence != null && evidence!.trim().isNotEmpty) {
      map['evidence'] = evidence!.trim();
    }
    return map;
  }
}
