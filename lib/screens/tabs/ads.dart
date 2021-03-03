// _adunitID id TEST ID

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';

const _adUnitID = "ca-app-pub-8216661025581351/9186185722";

final _nativeAdController = NativeAdmobController();

Widget adsContainer() {
  return Container(
    //You Can Set Container Height
    height: 140,
    color: Colors.transparent,
    child: NativeAdmob(
      // Your ad unit id
      adUnitID: _adUnitID,
      controller: _nativeAdController,
      type: NativeAdmobType.full,
      error: CupertinoActivityIndicator(
        radius: 20.0,
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
