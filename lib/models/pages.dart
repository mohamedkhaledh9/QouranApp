class Pages {
  final int pageNumbers;

  Pages({this.pageNumbers});
  factory Pages.fromJson(Map<String, dynamic> jsonData) {
    return Pages(pageNumbers: jsonData['data']['pages']['count']);
  }
}
