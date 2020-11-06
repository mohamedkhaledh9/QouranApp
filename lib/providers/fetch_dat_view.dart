import 'package:flutter/material.dart';
import 'package:qouran/fetch_data/fetch_data_from_api.dart';
import 'package:qouran/models/sajdaDetails.dart';
import 'package:qouran/models/sorah_details.dart';

class FetchDataViewModel extends ChangeNotifier {
  int _sorah = 0;
  int _pages = 0;
  int _ayah = 0;
  int _sajda = 0;
  List<SoraDetails> soraList = [];
  List<SajdaDetails> sajdaList = [];

  Future<void> fetch_sorah_numbers() async {
    _sorah = await FetchData().fetch_sorah();
    notifyListeners();
  }

  Future<void> fetch_pages_number() async {
    _pages = await FetchData().fetch_pages();
    notifyListeners();
  }

  Future<void> fetch_sorah_list() async {
    soraList = await FetchData().fetch_sorah_details();
    notifyListeners();
  }

  Future<void> fetch_ayah_numbers() async {
    _ayah = await FetchData().fetch_ayah();
    notifyListeners();
  }

  Future<void> fetch_sajda_numbers() async {
    _sajda = await FetchData().fetch_sajda();
    notifyListeners();
  }

  Future<void> fetch_ajda_list() async {
    sajdaList = await FetchData().fetch_sjada_details();
    notifyListeners();
  }

  int get sorahNumbers => _sorah;
  int get pageNmbers => _pages;
  int get ayaNumbers => _ayah;
  int get sajsaNumbers => _sajda;
  List<SoraDetails> get sora_List => soraList;
  List<SajdaDetails> get sajda_List => sajdaList;
}
