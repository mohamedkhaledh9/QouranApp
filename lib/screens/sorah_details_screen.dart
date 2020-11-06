import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qouran/models/sorah_details.dart';
import 'package:qouran/providers/fetch_dat_view.dart';
import 'package:qouran/screens/sora_more_details_screen.dart';

class SorahDetailsScreen extends StatelessWidget {
  static String id = "SorahDetailsScreen";
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
                    'عدد السور في  القران الكريم',
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
                      "  سوره${pages}",
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: SizedBox(
                height: 60,
                width: 200,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.black,
                  onPressed: () async {
                    await Provider.of<FetchDataViewModel>(context,
                            listen: false)
                        .fetch_sorah_list();
                    List<SoraDetails> _soraDetailsList =
                        Provider.of<FetchDataViewModel>(context, listen: false)
                            .sora_List;
                    Navigator.pushNamed(context, SorahMoreDetailsScreen.id,
                        arguments: _soraDetailsList);
                  },
                  child: Text(
                    "التفاصيل",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
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
