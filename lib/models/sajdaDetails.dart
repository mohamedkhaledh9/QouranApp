class SajdaDetails {
  final int sorah;
  final int ayah;
  final bool recommended;
  final bool obligatorty;

  SajdaDetails({this.sorah, this.ayah, this.recommended, this.obligatorty});

  factory SajdaDetails.fromjson(Map<String, dynamic> jsonData) {
    return SajdaDetails(
        sorah: jsonData['surah'],
        ayah: jsonData['ayah'],
        recommended: jsonData['recommended'],
        obligatorty: jsonData['obligatory']);
  }
}
