class SoraDetailsList {
  final List<dynamic> sorahLsit;

  SoraDetailsList({this.sorahLsit});

  factory SoraDetailsList.fromJson(Map<String, dynamic> jsonData) {
    return SoraDetailsList(sorahLsit: jsonData['data']['surahs']['references']);
  }
}
