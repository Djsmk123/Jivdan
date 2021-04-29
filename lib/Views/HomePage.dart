import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jivandaan/Config/colors.dart';
import 'package:jivandaan/Views/Services.dart';

import 'DashBoard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> services = [
    "Oxygen",
    "Hospital with Beds",
    "Ambulance",
    "Medicines"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: CustomColor.baseColor,
        title: Row(
          children: [
            SvgPicture.asset(
              'blood-donation.svg',
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Jivandan",
              style: GoogleFonts.poppins(
                fontSize: 16.5,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.github,
                  size: 18,
                  color: Color(0xffAD87FF),
                ),
                SizedBox(width: 5),
                Text(
                  "Github",
                  style: GoogleFonts.poppins(
                    fontSize: 15.5,
                    // fontWeight: FontWeight.w500,
                    color: CustomColor.textColor,

                    // color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Center(
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.heart_fill,
                  size: 17,
                  color: Color(0xffAD87FF),
                ),
                SizedBox(width: 5),
                Text(
                  "Donate",
                  style: TextStyle(
                    fontSize: 15.5,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.textColor,

                    // color: Color(0xff6E7191),

                    // fontWeight: FontWeight.w500,
                    // color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Center(
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.users,
                  size: 18,
                  color: Color(0xffAD87FF),
                ),
                SizedBox(width: 10),
                Text(
                  "Contribute",
                  style: GoogleFonts.poppins(
                    fontSize: 15.5,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.textColor,

                    // color: Color(0xff6E7191),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: DashBoard(),
    );
  }
}