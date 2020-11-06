import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qouran/models/sajdaDetails.dart';

class SajdaMoreDetailsScreen extends StatelessWidget {
  static String id = "SajdaMoreDetailsScreen";

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    List<SajdaDetails> _sajdaList = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text("السجدات في القران الكريم"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _sajdaList.length,
                itemBuilder: (context, index) {
                  if (_sajdaList.isNotEmpty) {
                    return Stack(
                      children: [
                        Image(
                          image: AssetImage('images/qouranPic4.jpg'),
                          width: w,
                          height: h,
                          fit: BoxFit.fill,
                        ),
                        Opacity(
                          opacity: .5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              height: h * .15,
                              width: w * .95,
                              child: Center(
                                child: Text(
                                  " سجده في سوره رقم : ${_sajdaList[index].sorah}",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 180,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .15,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    " ايه رقم : ${_sajdaList[index].ayah}",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 380,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .15,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    "  ${_sajdaList[index].recommended} : موصي به ",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 550,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .15,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    " ${_sajdaList[index].obligatorty} : الوجوب ",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 15,
                          thickness: 15,
                          color: Colors.white,
                        ),
                      ],
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
