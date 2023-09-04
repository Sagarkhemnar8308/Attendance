import 'package:baapapp/BottomBar.dart';
import 'package:baapapp/Organization.dart';
import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Six.dart';
void main(List<String> args) {
  runApp(Fifth());
}
class Fifth extends StatefulWidget {
  const Fifth({super.key});
  @override
  State<Fifth> createState() => _FifthState();
}
class _FifthState extends State<Fifth> {
  int cur = 2;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350,450),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 10, 10),
          child: SingleChildScrollView(
            child: Container(
              height: 500.h,
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
                            height: 4,
                          ),
                          Text(
                            "Ashish Shide",
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
                              style: TextStyle(fontSize: 17.sp, color: Colors.grey),
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
                              height: 45.h,
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
                  size(20.h,0),
                  InkWell(
                     onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Six(),));
                },
                    child: Container(
                      height: 200.h,
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
                  ),
            
                  Center(
                    child: SizedBox(
                      height: 30.h,
                      width:double.infinity.w,
                      child: ElevatedButton(
                          onPressed: () {
                           Navigator.push(context,MaterialPageRoute(builder: (context) => Organization(),));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 236, 233, 233),
                          ),
                          child: Text(
                            "Check In",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                            ),
                          )),
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
                                    fontSize: 15.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
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
                                    fontSize: 15.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                       SizedBox(width: 5.w,),
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
                                " Leaves ",
                                style: TextStyle(
                                    fontSize: 15.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
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
                        "Leaves Request ",
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Text(
                        "No recent Leave request",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 75.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 216, 214, 214),),
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
                          SizedBox(height: 10.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20.h,
                                child: SafeArea(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 176, 226, 177)),
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(color: Colors.green),
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
            ),
          ),
        ),
        endDrawer: endDrawer(),
        bottomNavigationBar:BottomBar() ,
      );}
    );
  }
}

size(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
  );
}
