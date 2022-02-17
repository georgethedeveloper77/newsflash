import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';

Widget adsContainer() {
  return Container(
    //You Can Set Container Height
    height: 250,
    color: Colors.transparent,
    child: FacebookNativeAd(
      placementId: "445203690576993_445204507243578",
      adType: NativeAdType.NATIVE_AD,
      width: double.infinity,
      height: double.infinity,
      backgroundColor: Colors.white,
      titleColor: Colors.black,
      descriptionColor: Colors.black54,
      buttonColor: Colors.blueGrey,
      buttonTitleColor: Colors.white,
      buttonBorderColor: Colors.white,
      listener: (result, value) {
        print("Native Ad: $result --> $value");
      },
      keepExpandedWhileLoading: true,
      expandAnimationDuraion: 1000,
    ),
  );
}
