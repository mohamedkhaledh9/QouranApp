import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qouran/providers/fetch_dat_view.dart';
import 'package:qouran/screens/ayah_details_screen.dart';
import 'package:qouran/screens/page_details_screen.dart';
import 'package:qouran/screens/sajda_details_screen.dart';
import 'package:qouran/screens/sorah_details_screen.dart';

class HomePage extends StatelessWidget {
  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    double heigt = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "̨ا̍ڶــڦــڔٰا̍نۨ ا̍ڷــڭــڔٻۧــمۭ ",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Stack(
        children: [
          Container(
            child: Image(
              width: width,
              height: heigt,
              fit: BoxFit.fill,
              image: AssetImage('images/qouranPic.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
              onTap: () async {
                await Provider.of<FetchDataViewModel>(context, listen: false)
                    .fetch_pages_number();
                int p = Provider.of<FetchDataViewModel>(context, listen: false)
                    .pageNmbers;
                Navigator.pushNamed(context, PageDetailsScreen.id,
                    arguments: p);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                child: Opacity(
                  opacity: .6,
                  child: Container(
                    height: heigt * .15,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        "عدد صفحات القرن الكريم",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: GestureDetector(
              onTap: () async {
                await Provider.of<FetchDataViewModel>(context, listen: false)
                    .fetch_sorah_numbers();
                int p = Provider.of<FetchDataViewModel>(context, listen: false)
                    .sorahNumbers;
                Navigator.pushNamed(context, SorahDetailsScreen.id,
                    arguments: p);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                child: Opacity(
                  opacity: .6,
                  child: Container(
                    height: heigt * .15,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        "عدد السور في القران الكريم",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: GestureDetector(
              onTap: () async {
                await Provider.of<FetchDataViewModel>(context, listen: false)
                    .fetch_ayah_numbers();
                int p = Provider.of<FetchDataViewModel>(context, listen: false)
                    .ayaNumbers;
                Navigator.pushNamed(context, AyahDetailsScreen.id,
                    arguments: p);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                child: Opacity(
                  opacity: .6,
                  child: Container(
                    height: heigt * .15,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        "عدد الايات في القرن الكريم",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: GestureDetector(
              onTap: () async {
                await Provider.of<FetchDataViewModel>(context, listen: false)
                    .fetch_sajda_numbers();
                int p = Provider.of<FetchDataViewModel>(context, listen: false)
                    .sajsaNumbers;
                Navigator.pushNamed(context, SajdaDetailsScreen.id,
                    arguments: p);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 10, 0),
                child: Opacity(
                  opacity: .6,
                  child: Container(
                    height: heigt * .15,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        "عدد السجدات في القرن الكريم",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                        ),
                      ),
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
