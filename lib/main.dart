import 'package:flutter/material.dart';
import 'package:qouran/fetch_data/fetch_data_from_api.dart';
import 'package:qouran/providers/fetch_dat_view.dart';
import 'package:qouran/screens/ayah_details_screen.dart';
import 'package:qouran/screens/home_screen.dart';
import 'package:qouran/screens/page_details_screen.dart';
import 'package:provider/provider.dart';
import 'package:qouran/screens/sajda_details_screen.dart';
import 'package:qouran/screens/sajda_more_dtails_screen.dart';
import 'package:qouran/screens/sora_more_details_screen.dart';
import 'package:qouran/screens/sorah_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FetchData _fetchData = FetchData();
    _fetchData.fetch_sjada_details();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FetchDataViewModel(),
        ),
      ],
      child: MaterialApp(
        home: HomePage(),
        routes: {
          PageDetailsScreen.id: (context) => PageDetailsScreen(),
          AyahDetailsScreen.id: (context) => AyahDetailsScreen(),
          SorahDetailsScreen.id: (context) => SorahDetailsScreen(),
          SajdaDetailsScreen.id: (context) => SajdaDetailsScreen(),
          SorahMoreDetailsScreen.id: (context) => SorahMoreDetailsScreen(),
          SajdaMoreDetailsScreen.id: (context) => SajdaMoreDetailsScreen(),
        },
      ),
    );
  }
}
