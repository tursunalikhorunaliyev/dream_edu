import 'dart:developer';
import 'dart:ui';
import 'package:dream_edu/classes/service_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final username = TextEditingController();
  final password = TextEditingController();
  Color colorUsername = const Color(0xFFAABBC6);
  Color colorPassword = const Color(0xFFAABBC6);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3FD),
      body: Center(
        child: Container(
          height: 600,
          width: 1000,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: [
              Image.asset(
                "grids.png",
                height: 456,
                width: 500,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  height: double.infinity,
                  width: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 99),
                child: SizedBox(
                  width: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "Rectangle337.png",
                          height: 72,
                          width: 72,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "ZARVIS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: GoogleFonts.poppins(color: colorUsername),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 328,
                          height: 40,
                          child: TextField(
                            controller: username,
                            onChanged: (value) {
                              setState(() {
                                colorUsername = const Color(0xFFAABBC6);
                              });
                            },
                            cursorColor: const Color(0xFF5A55D2),
                            style: GoogleFonts.poppins(fontSize: 16),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                hintText: "Enter your username",
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 16, color: colorUsername),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF5A55D2), width: 1.3)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: colorUsername))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style:
                                    GoogleFonts.poppins(color: colorPassword),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 328,
                          height: 40,
                          child: TextField(
                            controller: password,
                            onChanged: (value) {
                              setState(() {
                                colorPassword = const Color(0xFFAABBC6);
                              });
                            },
                            cursorColor: const Color(0xFF5A55D2),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                hintText: "Enter your password",
                                hintStyle:
                                    GoogleFonts.poppins(color: colorPassword),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF5A55D2), width: 1.3)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: colorPassword))),
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () async {
                              /* if (await ServiceLogin().getData(
                                  username.text.trim(), password.text.trim())) {
                                log("Kirding");
                                username.clear();
                                password.clear();
                              } else {
                                log("Kiralmading 000");
                              } */

                              if (username.text.trim().isNotEmpty &&
                                  password.text.trim().isNotEmpty) {
                                setState(() {
                                  colorUsername = const Color(0xFFAABBC6);
                                  colorPassword = const Color(0xFFAABBC6);
                                });

                                if (username.text == "a" &&
                                    password.text == "s") {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return const Text("Salom");
                                    },
                                  ));
                                  username.clear();
                                  password.clear();
                                } else {
                                  if (username.text != "a") {
                                    setState(() {
                                      colorUsername = Colors.red;
                                    });
                                  }
                                  if (password.text != "s") {
                                    setState(() {
                                      colorPassword = Colors.red;
                                    });
                                  }
                                }
                              } else {
                                if (username.text.isEmpty) {
                                  setState(() {
                                    colorUsername = Colors.red;
                                  });
                                }
                                if (password.text.isEmpty) {
                                  setState(() {
                                    colorPassword = Colors.red;
                                  });
                                }
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 328,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF5A55D2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFFFBFBFB),
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
