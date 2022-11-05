import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

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
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 328,
                          height: 40,
                          child: TextField(
                            style: GoogleFonts.poppins(fontSize: 16),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                hintText: "Enter your username",
                                hintStyle: GoogleFonts.poppins(fontSize: 16),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF5A55D2), width: 1.3)),
                                border: const OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: GoogleFonts.poppins(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 328,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                hintText: "Enter your password",
                                hintStyle: GoogleFonts.poppins(),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF5A55D2), width: 1.3)),
                                border: const OutlineInputBorder()),
                          ),
                        ),
                        Padding(
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
                                  color: const Color(0xFFFBFBFB), fontSize: 16),
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
