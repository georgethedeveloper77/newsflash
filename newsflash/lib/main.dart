import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_api/screens/main_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:wiredash/wiredash.dart';

import 'APIKeys/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      navigatorKey: _navigatorKey,
      projectId: ID, //Your ID Here
      secret: secKey, //Your Key here
      theme: WiredashThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF232526),
          secondaryColor: Color(0xFF414345)),
      child: CupertinoApp(
        navigatorKey: _navigatorKey,
        home: Splash(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => MainScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MainScreen(),
      image: Image(
        image: CachedNetworkImageProvider(
            "https://cdn.dribbble.com/users/214929/screenshots/4830845/no-intenet-connection.gif"),
      ),
      backgroundColor: Color(0xFF1d0e32),
      photoSize: 200.0,
      loadingText: Text(
        "Privacy isn't Negotiable",
        // style: GoogleFonts.ubuntu(color: Colors.white54),
      ),
      loaderColor: Color(0xFF1d0e32),
    );
  }
}
