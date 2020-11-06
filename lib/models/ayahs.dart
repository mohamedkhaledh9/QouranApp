class Ayah {
  final int count;

  Ayah({this.count});

  factory Ayah.fromJson(Map<String, dynamic> jsonData) {
    return Ayah(count: jsonData['data']['ayahs']['count']);
  }
}
