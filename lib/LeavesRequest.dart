import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'BottomBar.dart';

class Leaves extends StatefulWidget {
  const Leaves({super.key});

  @override
  State<Leaves> createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
  int cur = 1;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(350, 450),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 227, 227, 227),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 10, 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 126, 118, 118),
                                  fontSize: 15.sp),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "jeff Walkar",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                  color: const Color.fromARGB(255, 65, 65, 65)),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "Administator,",
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.grey),
                              ),
                              TextSpan(
                                text: "food factory",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp,
                                    color: Colors.grey),
                              )
                            ]))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 20.h,
                                child: Image.asset(
                                  "images/a.png",
                                  fit: BoxFit.cover,
                                )),
                            Container(
                                height: 30.h,
                                child: Builder(
                                  builder: (context) => IconButton(
                                      onPressed: () {
                                        Scaffold.of(context).openEndDrawer();
                                      },
                                      icon: Icon(
                                        Icons.more_vert,
                                      )),
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Leaves Request ",
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 140.w,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Employee",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: const Color.fromARGB(
                                              255, 208, 202, 202)),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Divider(),
                        Text(
                          "No recent Leave request",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 130.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 237, 237)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Kushal pawar ,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 43, 42, 42),
                                      fontSize: 18.sp),
                                ),
                                TextSpan(
                                  text: "programer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 18.sp),
                                )
                              ])),
                              Text(
                                "2 days",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 18.sp),
                              ),
                              Text(
                                "28 Dec,22-29 Dec,22",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 43, 42, 42),
                                    fontSize: 18.sp),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Seak Leave",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 187, 234, 188)),
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(color: Colors.green),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      child: Text(
                                        "Approve",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red),
                                      child: Text(
                                        "Reject",
                                        style: TextStyle(color: Colors.white),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 130.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 237, 237)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Kushal pawar ,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 43, 42, 42),
                                      fontSize: 18.sp),
                                ),
                                TextSpan(
                                  text: "programer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 18.sp),
                                )
                              ])),
                              Text(
                                "2 days",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 18.sp),
                              ),
                              Text(
                                "28 Dec,22-29 Dec,22",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 43, 42, 42),
                                    fontSize: 18.sp),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Seak Leave",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 187, 234, 188)),
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(color: Colors.green),
                                      )),
                                ],
                              ),
                              size(20, 0),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      child: Text(
                                        "Approve",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red),
                                      child: Text(
                                        "Reject",
                                        style: TextStyle(color: Colors.white),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            endDrawer: endDrawer(),
            bottomNavigationBar: BottomBar(),
          );
        });
  }
}

size(double h, double w) {
  return SizedBox(
    height: h,
    width: w,
  );
}
