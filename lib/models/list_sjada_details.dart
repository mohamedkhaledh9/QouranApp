import 'package:qouran/models/sajdaDetails.dart';

class SajdaDetailsList {
  final List<dynamic> sajdaList;

  SajdaDetailsList({this.sajdaList});
  factory SajdaDetailsList.fromJson(Map<String, dynamic> jsonData) {
    return SajdaDetailsList(
        sajdaList: jsonData['data']['sajdas']['references']);
  }
}
