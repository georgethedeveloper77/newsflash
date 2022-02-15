import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_api/ads/ads.dart';

import 'home_widgets/headline_slider.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      HeadlingSliderWidget(),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Text(
              "",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
      adsContainer(),
    ]);
  }
}
