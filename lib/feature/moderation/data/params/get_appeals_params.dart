class GetAppealsParams {
  final int skip;
  final int limit;

  const GetAppealsParams({
    required this.skip,
    required this.limit,
  });

  Map<String, dynamic> toJson() => {
    'skip': skip,
    'limit': limit,
  };
}
