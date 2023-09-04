import 'package:baapapp/Fifth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(350,450),
      builder: (context, child) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
                  ),
                  Text(
                    "Ashish Shinde",
                    style: GoogleFonts.merriweather(fontSize: 20.sp),
                  ),
                  Divider(),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    child:InkWell(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Fifth(),));
                      },
                      child:LottieBuilder.asset(
                        "images/lottie/check.json",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Your Request Send to the Administator",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color.fromARGB(255, 148, 144, 144),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "check back again .",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      "Powered by",
                      style: TextStyle(color: Colors.grey,fontSize: 13.sp),
                    ),
                    subtitle: Text(
                      "the baap company",
                      style: GoogleFonts.merriweather(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
      }
    );
  }
}
