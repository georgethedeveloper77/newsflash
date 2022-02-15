// ignore_for_file: deprecated_member_use

import 'package:delayed_display/delayed_display.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_api/Extras/Licences.dart';
import 'package:news_app_api/Extras/TC.dart';
import 'package:news_app_api/Extras/about/about.dart';
import 'package:news_app_api/bloc/bottom_navbar_bloc.dart';
import 'package:news_app_api/newsflash1/views/homepage.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'tabs/home_screen.dart';
import 'tabs/search_screen.dart';
import 'tabs/sources_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BottomNavBarBloc _bottomNavBarBloc;

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFec2F4B), Color(0xFF009FFF)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  void initState() {
    super.initState();
    _bottomNavBarBloc = BottomNavBarBloc();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showCupertinoDialog(
              context: context,
              builder: (context) => new CupertinoAlertDialog(
                title: new Text(
                  'Are you sure?',
                  style: GoogleFonts.ubuntu(),
                ),
                content: new Text('Do you want to exit',
                    style: GoogleFonts.ubuntu()),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: new Text(
                      'Yes',
                      style: GoogleFonts.ubuntu(color: Colors.red),
                    ),
                  ),
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text(
                      'No',
                      style: GoogleFonts.ubuntu(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ) ??
            false;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF121212),
            actions: <Widget>[
              DelayedDisplay(
                slidingCurve: Curves.fastLinearToSlowEaseIn,
                child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 35.0,
                  ),
                  onPressed: () => showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      cancelButton: CupertinoActionSheetAction(
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.ubuntu(color: Colors.red),
                        ),
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                      ),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.zoom_in,
                                color: Colors.white,
                              ),
                              Text('Check out other apps',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            launch(
                                "https://play.google.com/store/apps/dev?id=8692038640782019043");
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              Text('Share App',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Share.share(
                                'Check out the latest news \n https://play.google.com/store/apps/details?id=com.mindhunter.newsflash',
                                subject: 'News Flash');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.library_books,
                                color: Colors.white,
                              ),
                              Text(
                                'Terms and Conditions',
                                style: GoogleFonts.ubuntu(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AppTC()));
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.verified_user,
                                color: Colors.white,
                              ),
                              Text('View Licences',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AppLicence()));
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                CupertinoIcons.info,
                                color: Colors.white,
                              ),
                              Text('About',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => About()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
            title: DelayedDisplay(
              slidingCurve: Curves.fastLinearToSlowEaseIn,
              child: Text(
                "NewsFlash",
                style: GoogleFonts.ubuntu(
                    foreground: Paint()..shader = linearGradient,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: SafeArea(
            child: StreamBuilder<NavBarItem>(
              stream: _bottomNavBarBloc.itemStream,
              initialData: _bottomNavBarBloc.defaultItem,
              // ignore: missing_return
              builder:
                  (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
                switch (snapshot.data) {
                  case NavBarItem.HOME:
                    return HomePage();
                  case NavBarItem.EXPLORE:
                    return HomeScreen();
                  case NavBarItem.SOURCES:
                    return SourceScreen();
                  case NavBarItem.SEARCH:
                    return SearchScreen();
                  /*case NavBarItem.PAYMENTS:
                    return Payments();*/
                }
              },
            ),
          ),
          bottomNavigationBar: StreamBuilder(
            stream: _bottomNavBarBloc.itemStream,
            initialData: _bottomNavBarBloc.defaultItem,
            builder:
                (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 0,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: BottomNavigationBar(
                    elevation: 0.0,
                    backgroundColor: Colors.black,
                    iconSize: 28,
                    unselectedItemColor: Colors.blue,
                    unselectedFontSize: 9.5,
                    selectedFontSize: 9.5,
                    type: BottomNavigationBarType.shifting,
                    fixedColor: Colors.black,
                    currentIndex: snapshot.data.index,
                    onTap: _bottomNavBarBloc.pickItem,
                    items: [
                      BottomNavigationBarItem(
                        title: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "Home",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        icon: Icon(EvaIcons.homeOutline),
                        activeIcon: Icon(EvaIcons.home),
                      ),
                      BottomNavigationBarItem(
                        title: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text("Explore",
                                style: TextStyle(fontWeight: FontWeight.w600))),
                        icon: Icon(Icons.explore_outlined),
                        activeIcon: Icon(Icons.explore),
                      ),
                      BottomNavigationBarItem(
                        title: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text("Sources",
                                style: TextStyle(fontWeight: FontWeight.w600))),
                        icon: Icon(EvaIcons.gridOutline),
                        activeIcon: Icon(EvaIcons.grid),
                      ),
                      BottomNavigationBarItem(
                        title: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text("Search",
                                style: TextStyle(fontWeight: FontWeight.w600))),
                        icon: Icon(EvaIcons.searchOutline),
                        activeIcon: Icon(EvaIcons.search),
                      ),
                      /*BottomNavigationBarItem(
                        title: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text("Promote",
                                style: TextStyle(fontWeight: FontWeight.w600))),
                        icon: Icon(Icons.payments_outlined),
                        activeIcon: Icon(Icons.payments),
                      ),*/
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
