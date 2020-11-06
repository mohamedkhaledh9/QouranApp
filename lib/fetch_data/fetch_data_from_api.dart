import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:qouran/models/ayahs.dart';
import 'package:qouran/models/list_sjada_details.dart';
import 'package:qouran/models/pages.dart';
import 'package:qouran/models/sajdaDetails.dart';
import 'package:qouran/models/sajda_count.dart';
import 'package:qouran/models/sorah.dart';
import 'package:qouran/models/sorah_details.dart';
import 'package:qouran/models/sorah_details_list.dart';

class FetchData {
  Future<int> fetch_ayah() async {
    http.Response _response =
        await http.get('http://api.alquran.cloud/v1/meta');
    if (_response.statusCode == 200) {
      debugPrint(_response.statusCode.toString());
      //   debugPrint(_response.body);
      String data = _response.body;
      var jsonData = jsonDecode(data);
      Ayah _ayah = Ayah.fromJson(jsonData);
      return _ayah.count;
    } else {
      debugPrint("no respone");
    }
  }

  Future<int> fetch_sorah() async {
    http.Response _response =
        await http.get('http://api.alquran.cloud/v1/meta');
    if (_response.statusCode == 200) {
      String data = _response.body;
      var jsonData = jsonDecode(data);
      Sorah _sorah = Sorah.fromjson(jsonData);
      return _sorah.count;
    } else {
      debugPrint("no response");
    }
  }

  Future<int> fetch_sajda() async {
    http.Response _response =
        await http.get('http://api.alquran.cloud/v1/meta');
    if (_response.statusCode == 200) {
      String data = _response.body;
      var jsonData = jsonDecode(data);
      SajdaCount _sajda = SajdaCount.fromJson(jsonData);
      return _sajda.count;
    } else {
      debugPrint("no response");
    }
  }

  Future<List<SajdaDetails>> fetch_sjada_details() async {
    http.Response _response =
        await http.get('http://api.alquran.cloud/v1/meta');
    if (_response.statusCode == 200) {
      String data = _response.body;
      var jsonData = jsonDecode(data);
      SajdaDetailsList _sjadaList = SajdaDetailsList.fromJson(jsonData);
      List<SajdaDetails> _sajdadetailsList =
          _sjadaList.sajdaList.map((e) => SajdaDetails.fromjson(e)).toList();
      return _sajdadetailsList;
    } else {
      debugPrint("no response !!!");
    }
  }

  Future<List<SoraDetails>> fetch_sorah_details() async {
    http.Response _response =
        await http.get('http://api.alquran.cloud/v1/meta');
    if (_response.statusCode == 200) {
      String data = _response.body;
      var jsonData = jsonDecode(data);
      SoraDetailsList _sorahList = SoraDetailsList.fromJson(jsonData);
      List<SoraDetails> _sorahdetailsList =
          _sorahList.sorahLsit.map((e) => SoraDetails.fromJson(e)).toList();
      return _sorahdetailsList;
    } else {
      debugPrint("no response !!!");
    }
  }

  Future<int> fetch_pages() async {
    http.Response _response =
        await http.get('http://api.alquran.cloud/v1/meta');
    if (_response.statusCode == 200) {
      String data = _response.body;
      var jsonData = jsonDecode(data);
      Pages _pages = Pages.fromJson(jsonData);
      return _pages.pageNumbers;
    } else {
      debugPrint("no respone");
    }
  }
}
