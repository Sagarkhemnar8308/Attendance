import 'package:baapapp/Fifth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Fourth.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350,450),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
       return Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 20, 0),
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
                    const Divider(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "the baap company",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.sp),
                    ),
                    Text(
                      "Software Company",
                      style: TextStyle(color: Colors.grey,fontSize: 13.sp),
                    ),
                    Divider(),
                  ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose your role to get started",
                        style:
                            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      size(20.h, 0),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            value: val1,
                            onChanged: (value) {
                              setState(() {
                                val1 = value!;
                                if (value) {
                                  val2 = false;
                                  val3 = false;
                                  val4 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                val1 = true;
                                if (true) {
                                  val3 = false;
                                  val2 = false;
                                  val4 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                            child: Text(
                              "Administator",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            value: val2,
                            onChanged: (value) {
                              setState(() {
                                val2 = value!;
                                if (value) {
                                  val1 = false;
                                  val3 = false;
                                  val4 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                val2 = true;
                                if (true) {
                                  val3 = false;
                                  val1 = false;
                                  val4 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                            child: Text(
                              "Security Guard",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            value: val3,
                            onChanged: (value) {
                              setState(() {
                                val3 = value!;
                                if (value) {
                                  val2 = false;
                                  val1 = false;
                                  val4 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                val3 = true;
                                if (true) {
                                  val1 = false;
                                  val2 = false;
                                  val4 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                            child: Text(
                              "Cook",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            value: val4,
                            onChanged: (value) {
                              setState(() {
                                val4 = value!;
                                if (value) {
                                  val1 = false;
                                  val2 = false;
                                  val3 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                val4 = true;
                                if (true) {
                                  val3 = false;
                                  val2 = false;
                                  val1 = false;
                                  val5 = false;
                                  val6 = false;
                                }
                              });
                            },
                            child: Text(
                              "It Staff",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            value: val5,
                            onChanged: (value) {
                              setState(() {
                                val5 = value!;
                                if (value) {
                                  val2 = false;
                                  val3 = false;
                                  val4 = false;
                                  val1 = false;
                                  val6 = false;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                val5 = true;
                                if (true) {
                                  val3 = false;
                                  val2 = false;
                                  val4 = false;
                                  val1 = false;
                                  val6 = false;
                                }
                              });
                            },
                            child: Text(
                              "Student",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: CircleBorder(),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            value: val6,
                            onChanged: (value) {
                              setState(() {
                                val6 = value!;
                                if (value) {
                                  val2 = false;
                                  val3 = false;
                                  val4 = false;
                                  val5 = false;
                                  val1 = false;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                val6 = true;
                                if (true) {
                                  val3 = false;
                                  val2 = false;
                                  val4 = false;
                                  val5 = false;
                                  val1 = false;
                                }
                              });
                            },
                            child: Text(
                              "HouseKeeping",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 25.h,
                  width: double.infinity.w,
                  child: ElevatedButton(
                    onPressed: () {
                      if (val1 == true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fourth()));
                      } else if (val2 == true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fifth()));
                      } else if(val3==true ){
                          
                      }
                    },
                    child: Text(
                      "Request Access",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(color: Colors.grey),
                    ListTile(
                      title: Text(
                        "Powered by",
                        style: TextStyle(color: Colors.grey,fontSize: 12.sp),
                      ),
                      subtitle: Text(
                        "the baap company",
                        style: GoogleFonts.merriweather(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      );
      }
    );
  }
}

size(double height, double wid) {
  return SizedBox(
    height: height,
    width: wid,
  );
}
