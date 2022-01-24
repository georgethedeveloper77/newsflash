import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';

Widget adsContainer() {
  return Container(
    //You Can Set Container Height
    height: 140,
    color: Colors.transparent,
    child: FacebookNativeAd(
      // placementId: "YOUR_PLACEMENT_ID",
      placementId: "Newsflash_Native_Fyber#445203690576993_445204507243578",
      adType: NativeAdType.NATIVE_BANNER_AD,
      bannerAdSize: NativeBannerAdSize.HEIGHT_100,
      width: double.infinity,
      backgroundColor: Colors.blue,
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      buttonColor: Colors.deepPurple,
      buttonTitleColor: Colors.white,
      buttonBorderColor: Colors.white,
      listener: (result, value) {
        print("Native Banner Ad: $result --> $value");
      },
    ),
  );
}

// ignore: non_constant_identifier_names
