class SajdaCount {
  final int count;
  SajdaCount({this.count});
  factory SajdaCount.fromJson(Map<String, dynamic> jsonData) {
    return SajdaCount(count: jsonData['data']['sajdas']['count']);
  }
}
