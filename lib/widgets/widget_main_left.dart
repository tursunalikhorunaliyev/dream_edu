import 'dart:developer';

import 'package:dream_edu/classes/set_click_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMainLeft extends StatefulWidget {
  const WidgetMainLeft({super.key});

  @override
  State<WidgetMainLeft> createState() => _WidgetMainLeftState();
}

class _WidgetMainLeftState extends State<WidgetMainLeft> {
  final setClickMain = SetClickMain();
  List listImages = [
    "element-4.png",
    "bitcoin-convert.png",
    "Icons.png",
    "Union.png",
    "wallet.png",
    "setting.png",
  ];
  List listTexts = [
    "Dashboard",
    "Exchange",
    "Library",
    "Schedules",
    "Payouts",
    "Settings",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "Rectangle337.png",
                    height: 40,
                    width: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "ZARVIS",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Container(
                height: 1,
                width: 180,
                color: const Color(0xFFE4E7ED),
              ),
            ),
            SizedBox(
              height: 400,
              width: 200,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: listImages.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return button(listImages[index], listTexts[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Container(
                width: 216,
                height: 269,
                decoration: const BoxDecoration(
                    color: Color(0xFF00DEA3),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset("Icon.png"),
                    ),
                    Text(
                      "Keep you safe!",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 20),
                      child: Text(
                        "Update your security password, keep your account safe!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                    Text(
                      "Update Privacy",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget button(
    String image,
    String text, {
    bool visible = false,
    Color color = const Color(0xFF00140E),
    VoidCallback? voidCallback,
    int index = 0,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 30),
      child: GestureDetector(
        onTap: voidCallback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              color: color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                text,
                style: GoogleFonts.poppins(fontSize: 18, color: color),
              ),
            ),
            Visibility(
              visible: visible,
              child: Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                    color: Color(0xFF00DEA3),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
