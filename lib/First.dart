import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(350,500),
       minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {  
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "welcome",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),
                ),
                size(8, 0),
                Text(
                  "Ashish Shinde",
                  style: GoogleFonts.merriweather(fontSize: 20.sp),
                ),
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "People Management on your fingertip",
                    style: GoogleFonts.arvo(
                        fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
                  size(20, 0),
                  SizedBox(
                    height: 40.h,
                    width: 110.w,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Second(),
                            ));
                      },
                      child: Text(
                        "Start Now",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: Colors.black))),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Text("Powered by",style: TextStyle(fontSize: 13.sp),),
                  Text(
                    "Food Factory",
                    style: TextStyle(
                      fontSize: 14.sp,
                        color: Colors.black, fontWeight: FontWeight.bold),
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

size(double height, double width) {
  return SizedBox(
    height: height.h,
    width: width.w,
  );
}
