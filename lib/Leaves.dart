import 'package:baapapp/BottomBar.dart';
import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaveRequest extends StatefulWidget {
  const LeaveRequest({super.key});

  @override
  State<LeaveRequest> createState() => _LeaveRequestState();
}

class _LeaveRequestState extends State<LeaveRequest> {
  int cur = 1;
  int val2=1;
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
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
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
                              height: 25.h,
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
                      )
                    ],
                  ),
                  size(10.h, 0),
                  Row(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 235, 232, 232),
                        child: Column(
                          children: [
                            Text(
                              "5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              " Seak ",
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                      size(0, 8),
                      Container(
                        color: const Color.fromARGB(255, 235, 232, 232),
                        child: Column(
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              " Cauasal ",
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                      size(0, 8.w),
                      Container(
                        color: const Color.fromARGB(255, 235, 232, 232),
                        child: Column(
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              " Special ",
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                          ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25))),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          height: 500,
                                          child: Padding(
                                            padding: const EdgeInsets.all(28.0),
                                            child: Column(
                                              children: [
                                                Text("Leave Application"),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Divider(),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          color: Colors.black)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child:
                                                        DropdownButtonHideUnderline(
                                                      child: DropdownButton(
                                                          icon: Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Icon(Icons
                                                                  .arrow_drop_down)),
                                                          value: val2,
                                                          items: [
                                                            DropdownMenuItem(
                                                              child: Text("Causal"),
                                                              value: 1,
                                                            ),
                                                            DropdownMenuItem(
                                                                child:
                                                                    Text("2"),
                                                                value: 2),
                                                            DropdownMenuItem(
                                                                child:
                                                                    Text("3"),
                                                                value: 3),
                                                            DropdownMenuItem(
                                                                child:
                                                                    Text("4"),
                                                                value: 4)
                                                          ],
                                                          onChanged: (value) {
                                                            setState(() {
                                                              val2 = value!;
                                                            });
                                                          }),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Container(
                                                  height: 70.h,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            "Cause Of the Leave",
                                                      ),
                                                      maxLines: 5,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 227, 227, 227),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Form"),
                                                        InkWell(
                                                            onTap: () {},
                                                            child: Icon(
                                                              Icons
                                                                  .calendar_month,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 227, 227, 227),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("to Date"),
                                                        InkWell(
                                                            onTap: () {},
                                                            child: Icon(
                                                              Icons
                                                                  .calendar_month,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: true,
                                                      onChanged: (value) {
                                                        setState(() {});
                                                      },
                                                    ),
                                                    Text("Half Day")
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        LeaveRequest(),
                                                              ));
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .black),
                                                        child: Text(
                                                          "Apply",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              child: Text(
                                "Apply",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      Divider(),
                      Text(
                        "No recent Leave request",
                        style: TextStyle(fontSize: 15),
                      ),
                      size(12, 0),
                      Container(
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 216, 214, 214),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2 Days",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "28 dec,22-29 dec ,22",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Sick Leave",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20,
                                    child: SafeArea(
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 176, 226, 177)),
                                          child: Text(
                                            "Approved",
                                            style:
                                                TextStyle(color: Colors.green),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      size(10, 0),
                      Container(
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 216, 214, 214),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1 Days",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "01 jan 2023",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Causal leave",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20,
                                    child: SafeArea(
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.amber.shade50),
                                          child: Text(
                                            "Rejected",
                                            style: TextStyle(
                                                color: Colors.orange.shade300),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            endDrawer: endDrawer(),
            bottomNavigationBar: BottomBar(),
          );
        });
  }
}

size(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
  );
}
