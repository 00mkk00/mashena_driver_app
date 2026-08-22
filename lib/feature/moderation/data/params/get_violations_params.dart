class GetViolationsParams {
  final int skip;
  final int limit;

  const GetViolationsParams({
    required this.skip,
    required this.limit,
  });

  Map<String, dynamic> toJson() => {
    'skip': skip,
    'limit': limit,
  };
}
