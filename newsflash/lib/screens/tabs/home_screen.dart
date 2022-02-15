import 'package:flutter/material.dart';
import 'package:news_app_api/ads/ads.dart';
import 'package:news_app_api/widgets/home_widgets/headline_slider.dart';
import 'package:news_app_api/widgets/home_widgets/hot_news.dart';
import 'package:news_app_api/widgets/home_widgets/top_channels.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeadlingSliderWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                "Top channels{A-Z}",
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
        TopChannelsWidget(),
        SizedBox(
          height: 5.0,
        ),
        adsContainer(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                "Hot News",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        HotNewsWidget(),
        Divider(),
        adsContainer()
      ],
    );
  }
}
