import 'package:flutter/material.dart';
import 'package:news_app_api/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget widget) {
        Widget error = Image(
          image: AssetImage("assets/img/10_Connection Lost.png"),
        );
        if (widget is Scaffold || widget is Navigator)
          error = Scaffold(body: Center(child: error));
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
        return widget;
      },
      debugShowCheckedModeBanner: false,
      title: 'NewsFlash',
      home: MainScreen(),
    );
  }
}
