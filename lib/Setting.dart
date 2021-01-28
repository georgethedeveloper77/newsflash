import 'package:flutter/material.dart';
import 'package:news_app_api/screens/tabs/ads.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'const.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String _packageName;
  String _version;
  @override
  void initState() {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      _packageName = packageInfo.packageName;
      _version = packageInfo.version;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text("More"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Recommend"),
            subtitle: Text("Share this app with your friends and family."),
            onTap: () {
              Share.share(
                "$message\n${url + _packageName}",
              );
            },
          ),
          ListTile(
            title: Text("The Developer"),
            subtitle: Text("Get Other Apps"),
            onTap: () => launch("$gitHubUrl"),
          ),
          ListTile(
            title: Text("Rate App"),
            subtitle: Text("Leave a review on the Google Play Store."),
            onTap: () => launch(url + _packageName),
          ),
          Divider(),
          ListTile(
            title: Text("App Version"),
            subtitle: Text("${_version ?? "2.0.0"} "),
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              //You Can Set Container Height
              height: MediaQuery.of(context).size.height * 0.3,
              child: adsContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
