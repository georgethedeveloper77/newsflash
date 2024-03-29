import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLicence extends StatefulWidget {
  @override
  _AppLicenceState createState() => _AppLicenceState();
}

class _AppLicenceState extends State<AppLicence> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          middle: Text(
            "Policy Licence",
            style: GoogleFonts.ubuntu(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color(0xFF121212),
        ),
        backgroundColor: Color(0xFF121212),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DelayedDisplay(
                slidingCurve: Curves.fastLinearToSlowEaseIn,
                child: Text(
                  """End-User License Agreement (EULA) of NewsFlash Data Privacy
This End-User License Agreement ("EULA") is a legal agreement between you and mindBerzerk

This EULA agreement governs your acquisition and use of our NewsFlash Data Privacy software ("Software") directly from mindBerzerk or indirectly through a mindBerzerk authorized reseller or distributor (a "Reseller").

Please read this EULA agreement carefully before completing the installation process and using the NewsFlash Data Privacy software. It provides a license to use the NewsFlash Data Privacy software and contains warranty information and liability disclaimers.

If you register for a free trial of the NewsFlash Data Privacy software, this EULA agreement will also govern that trial. By clicking "accept" or installing and/or using the NewsFlash Data Privacy software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA agreement.

If you are entering into this EULA agreement on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA agreement, do not install or use the Software, and you must not accept this EULA agreement.

This EULA agreement shall apply only to the Software supplied by mindBerzerk herewith regardless of whether other software is referred to or described herein. The terms also apply to any mindBerzerk updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms apply.

License Grant
mindBerzerk hereby grants you a personal, non-transferable, non-exclusive licence to use the NewsFlash Data Privacy software on your devices in accordance with the terms of this EULA agreement.

You are permitted to load the NewsFlash Data Privacy software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum requirements of the NewsFlash Data Privacy software.

You are not permitted to:

Edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things
Reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose
Allow any third party to use the Software on behalf of or for the benefit of any third party
Use the Software in any way which breaches any applicable local, national or international law
use the Software for any purpose that mindBerzerk considers is a breach of this EULA agreement
Intellectual Property and Ownership
mindBerzerk shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of mindBerzerk.

mindBerzerk reserves the right to grant licences to use the Software to third parties.

Termination
This EULA agreement is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to mindBerzerk.

It will also terminate immediately if you fail to comply with any term of this EULA agreement. Upon such termination, the licenses granted by this EULA agreement will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA agreement.

Governing Law
This EULA agreement, and any dispute arising out of or in connection with this EULA agreement, shall be governed by and construed in accordance with the laws of in.""",
                  style: GoogleFonts.ubuntu(
                      fontSize: 17,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
