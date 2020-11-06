import 'package:flutter/material.dart';

class PageDetailsScreen extends StatelessWidget {
  static String id = "PageDetailsScreen";

  @override
  Widget build(BuildContext context) {
    double heigt = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int pages = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("ا̍ڶــڦــڔٰا̍نۨ ا̍ڷــڭــڔٻۧــمۭ"),
      ),
      body: Stack(
        children: [
          Container(
            child: Image(
              height: heigt,
              width: width,
              image: AssetImage('images/qouranPic2.png'),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 100, 5, 0),
            child: Opacity(
              opacity: .5,
              child: Container(
                height: heigt * .15,
                width: width * .95,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'عدد صفحات القران الكريم',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(70, 30, 5, 0),
              child: Opacity(
                opacity: .5,
                child: Container(
                  height: heigt * .15,
                  width: width * .5,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "  صفحه${pages}",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.amberAccent),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
