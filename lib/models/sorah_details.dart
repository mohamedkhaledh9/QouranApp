class SoraDetails {
  final int number;
  final String name;
  final String englishName;
  final String englishTranslation;
  final int numberOfAyahs;
  final String revelationType;

  SoraDetails(
      {this.number,
      this.name,
      this.englishName,
      this.englishTranslation,
      this.revelationType,
      this.numberOfAyahs});

  factory SoraDetails.fromJson(Map<String, dynamic> jsonData) {
    return SoraDetails(
      number: jsonData['number'],
      name: jsonData['name'],
      englishName: jsonData['englishName'],
      englishTranslation: jsonData['englishNameTranslation'],
      numberOfAyahs: jsonData['numberOfAyahs'],
      revelationType: jsonData['revelationType'],
    );
  }
}
