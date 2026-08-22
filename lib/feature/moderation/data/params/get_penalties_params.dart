class GetPenaltiesParams {
  final int skip;
  final int limit;

  const GetPenaltiesParams({
    required this.skip,
    required this.limit,
  });

  Map<String, dynamic> toJson() => {
    'skip': skip,
    'limit': limit,
  };
}
