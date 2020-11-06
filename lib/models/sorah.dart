class Sorah {
  final int count;

  Sorah({this.count});

  factory Sorah.fromjson(Map<String, dynamic> jsonData) {
    return Sorah(count: jsonData['data']['surahs']['count']);
  }
}
