import 'package:baapapp/BottomBar.dart';
import 'package:baapapp/Leaves.dart';
import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

void main(List<String> args) {
  runApp(Six());
}

class Six extends StatefulWidget {
  const Six({super.key});

  @override
  State<Six> createState() => _SixState();
}

class _SixState extends State<Six> {
  int cur = 2;
  int valed = 1;
  int val2 = 1;
  bool val = false;
  bool val1 = false;

  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(350, 450),
        minTextAdapt: true,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 227, 227, 227),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 10, 10),
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
                                height: 40.h,
                                child: Builder(
                                  builder: (context) => IconButton(
                                      onPressed: () {
                                        Scaffold.of(context).openEndDrawer();
                                      },
                                      icon: Icon(
                                        Icons.more_vert,
                                        size: 20.h,
                                      )),
                                )),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 220.h,
                      child: TableCalendar(
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                        rowHeight: 35,
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                        ),
                        availableGestures: AvailableGestures.all,
                        onDaySelected: (selectedDay, focusedDay) {
                          focusedDay = selectedDay;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 237, 234, 234)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("23"),
                                Text(
                                  "Present Days",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 60.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 237, 234, 234)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("08"),
                                Text(
                                  "Absents Days",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 60.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 237, 234, 234)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("08"),
                              Text(
                                " Leaves ",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time Entry",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Divider(),
                      ],
                    ),
                    Container(
                      height: 50.h,
                      color: Colors.white30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Entry ",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "11:30 am",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Exit",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "5:30 pm",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Total time",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "6hr",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Time Entry Missing",
                          style: TextStyle(color: Colors.red, fontSize: 15.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25))),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 500.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(100))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Attendence Regularization",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "Start time",
                                                    style: TextStyle(
                                                        fontSize: 12.h,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    "${time.hour}:${time.minute}  ${time.period.name}",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    "End Time",
                                                    style: TextStyle(
                                                        fontSize: 12.h,
                                                        color: Colors.grey),
                                                  ),
                                                     SizedBox(
                                                    height: 15,
                                                  ),
                                                    Text(
                                                    "${time.hour}:${time.minute}  ${time.period.name}",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: 100.h,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.black)),
                                                  hintText:
                                                      "Explain the reason  for regulization"),
                                              maxLines: 5,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Apply leave Instead ?",
                                                style:
                                                    TextStyle(fontSize: 13.sp),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          25),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          25))),
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return SingleChildScrollView(
                                                          child: Container(
                                                            height: 400.h,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      28.0),
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                      "Leave Application"),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Divider(),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Container(
                                                                    height: 50,
                                                                    width: double
                                                                        .infinity,
                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.black)),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          DropdownButtonHideUnderline(
                                                                        child:
                                                                            DropdownButton(
                                                                          icon: Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Icon(Icons.arrow_drop_down)),
                                                                          value:
                                                                              val2,
                                                                          items: [
                                                                            DropdownMenuItem(
                                                                              child: Text("1"),
                                                                              value: 1,
                                                                            ),
                                                                            DropdownMenuItem(
                                                                                child: Text("2"),
                                                                                value: 2),
                                                                            DropdownMenuItem(
                                                                                child: Text("3"),
                                                                                value: 3),
                                                                            DropdownMenuItem(
                                                                                child: Text("4"),
                                                                                value: 4)
                                                                          ],
                                                                          onChanged:
                                                                              (value) {
                                                                            setState(() {
                                                                              val2 = value!;
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        70.h,
                                                                    decoration: BoxDecoration(
                                                                        border: Border.all(
                                                                            color: Colors
                                                                                .black),
                                                                        borderRadius:
                                                                            BorderRadius.circular(6)),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          TextFormField(
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              "Cause Of the Leave",
                                                                        ),
                                                                        maxLines:
                                                                            5,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        40.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          227,
                                                                          227,
                                                                          227),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                              "Form"),
                                                                          InkWell(
                                                                              onTap: () {},
                                                                              child: Icon(
                                                                                Icons.calendar_month,
                                                                              ))
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        40.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          227,
                                                                          227,
                                                                          227),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                              "to Date"),
                                                                          InkWell(
                                                                              onTap: () {},
                                                                              child: Icon(
                                                                                Icons.calendar_month,
                                                                              ))
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Checkbox(
                                                                        value:
                                                                            val1,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            val1 =
                                                                                value!;
                                                                          });
                                                                        },
                                                                      ),
                                                                      Text(
                                                                          "Half Day")
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      ElevatedButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => LeaveRequest(),
                                                                                ));
                                                                          },
                                                                          style:
                                                                              ElevatedButton.styleFrom(backgroundColor: Colors.black),
                                                                          child: Text(
                                                                            "Apply",
                                                                            style:
                                                                                TextStyle(color: Colors.white),
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
                                                    backgroundColor:
                                                        Colors.black),
                                                child: Text(
                                                  "Save",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Text(
                            "Regularise",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: StadiumBorder()),
                        ),
                      ],
                    )
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

size(double height, double width) {
  return SizedBox(
    height: height.h,
    width: width.w,
  );
}

_cal() {
  return TableCalendar(
    firstDay: DateTime.utc(2010, 10, 16),
    lastDay: DateTime.utc(2030, 3, 14),
    focusedDay: DateTime.now(),
    rowHeight: 35,
    headerStyle: HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
    ),
    availableGestures: AvailableGestures.all,
    onDaySelected: (selectedDay, focusedDay) {
      focusedDay = selectedDay;
    },
  );
}
