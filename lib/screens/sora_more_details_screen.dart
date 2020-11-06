import 'package:flutter/material.dart';
import 'package:qouran/models/sorah_details.dart';

class SorahMoreDetailsScreen extends StatelessWidget {
  static String id = "SorahMoreDetailsScreen";

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    List<SoraDetails> _soradetailslist =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("سور القران الكريم"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _soradetailslist.length,
                itemBuilder: (context, index) {
                  if (_soradetailslist.isNotEmpty) {
                    return Stack(
                      children: [
                        Image(
                          image: AssetImage('images/qouranPic3.jpg'),
                          width: w,
                          height: h,
                          fit: BoxFit.fill,
                        ),
                        Opacity(
                          opacity: .5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              height: h * .1,
                              width: w * .95,
                              child: Center(
                                child: Text(
                                  " رقم السوره : ${_soradetailslist[index].number.toString()}",
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
                          top: 150,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .1,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    " اسم السوره : ${_soradetailslist[index].name}",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 280,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .1,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    " ${_soradetailslist[index].englishName} :الاسم باللغه الانجليزيه ",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 400,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .1,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    "${_soradetailslist[index].englishTranslation} : ترجمة الاسم",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 510,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .1,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    " عدد الايات : ${_soradetailslist[index].numberOfAyahs.toString()}",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 630,
                          child: Opacity(
                            opacity: .5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                height: h * .1,
                                width: w * .95,
                                child: Center(
                                  child: Text(
                                    "  ${_soradetailslist[index].revelationType} : نوع السوره",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 15,
                          height: 5,
                          color: Colors.white,
                        ),
                      ],
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
