import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:table_calendar/table_calendar.dart';

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Mark ",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            fontSize: 18)),
                    TextSpan(
                        text: "Attendence",
                        style: TextStyle(color: Colors.grey, fontSize: 18))
                  ])),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  height: 200,
                  child: Column(
                    children: [
                      DefaultTabController(
                        length: 3,
                        child: Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 211, 210, 210)),
                                      child: TabBar(
                                        tabs: [
                                          Tab(
                                            child: Text(
                                              "RFID",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              "QR CODE",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              "MANUAL",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    SingleChildScrollView(
                                      child: _FirstTAbbar(),
                                    ),
                                    SingleChildScrollView(
                                      child: _SecondTabBar(),
                                    ),
                                    SingleChildScrollView(
                                      child: _ThirdTabBar(false, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_FirstTAbbar() {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 239, 239),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "IN   |",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text("Scanned Code"),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 20,
                child: CircularProgressIndicator(
                    color: Colors.grey,
                    backgroundColor: Colors.grey,
                    value: 50),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Member Details",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Divider(),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/g1.png"), fit: BoxFit.cover)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sujata Shelke",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              size(5, 0),
              Text(
                "Student",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              size(5, 0),
              Text(
                "BCA (batch 1)",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              size(5, 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.grey,
                  ),
                  size(5, 0),
                  Text(
                    "567878845858",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  size(5, 0)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.message_rounded,
                    color: Colors.grey,
                  ),
                  size(5, 0),
                  Text(
                    "sujata@gmail.com",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  size(5, 0),
                ],
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Text("Guardian / Parents Details")),
      SizedBox(
        height: 10,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Sanjay Shelke ",
            style: GoogleFonts.poppins(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "(father)",
            style: GoogleFonts.poppins(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      ListTile(
        leading: Icon(Icons.call),
        title: Text("80784867586"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("Sunita@gmail.com"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Sunita shelke ",
            style: GoogleFonts.poppins(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "(Mother)",
            style: GoogleFonts.poppins(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      ListTile(
        leading: Icon(Icons.call),
        title: Text("80784867586"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("Sunita@gmail.com"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 30,
              child: LottieBuilder.asset("images/lottie/check.json")),
          SizedBox(
            width: 5,
          ),
          Text(
            "Successfully Notified Mr.Sanjay Shelke",
            style: GoogleFonts.poppins(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );
}

_SecondTabBar() {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 245, 245),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Align(alignment: Alignment.center, child: Text("IN")),
            ),
            Container(
              height: 40,
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Tap to Scan",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Member Details",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Divider(),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/g1.png"), fit: BoxFit.cover)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sujata Shelke",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              size(5, 0),
              Text(
                "Student",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              size(5, 0),
              Text(
                "BCA (batch 1)",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              size(5, 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.grey,
                  ),
                  size(5, 0),
                  Text(
                    "567878845858",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  size(5, 0)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.message_rounded,
                    color: Colors.grey,
                  ),
                  size(5, 0),
                  Text(
                    "sujata@gmail.com",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  size(5, 0),
                ],
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Text("Guardian / Parents Details")),
      SizedBox(
        height: 10,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Sanjay Shelke ",
            style: GoogleFonts.poppins(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "(father)",
            style: GoogleFonts.poppins(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      ListTile(
        leading: Icon(Icons.call),
        title: Text("80784867586"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("Sunita@gmail.com"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Sunita shelke ",
            style: GoogleFonts.poppins(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "(Mother)",
            style: GoogleFonts.poppins(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      ListTile(
        leading: Icon(Icons.call),
        title: Text("80784867586"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("Sunita@gmail.com"),
        trailing: ElevatedButton(
          child: Text(
            "Notify",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          SizedBox(
              height: 30,
              child: LottieBuilder.asset("images/lottie/check.json")),
          SizedBox(
            width: 5,
          ),
          Text(
            "Successfully Notified Mr.Sanjay Shelke",
            style: GoogleFonts.poppins(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ],
  );
}

_ThirdTabBar(bool val, int val2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 218, 215, 215),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Align(alignment: Alignment.center, child: Text("Date")),
              ),
              Container(
                height: 40,
                width: 240,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 248, 248),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "12/12/2023",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(Icons.calendar_month),
                      onPressed: () {
                        cal();
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 218, 215, 215),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Align(alignment: Alignment.center, child: Text("IN")),
              ),
              Container(
                height: 40,
                width: 240,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 248, 248),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.arrow_drop_down)),
                      //disabledHint: ,
                      hint: Text("  Search Deparment / Unit"),
                      items: [
                        DropdownMenuItem(
                          child: Text("HR"),
                          value: 1,
                        ),
                        DropdownMenuItem(child: Text("CEO"), value: 2),
                        DropdownMenuItem(child: Text("3"), value: 3),
                        DropdownMenuItem(child: Text("4"), value: 4)
                      ],
                      onChanged: (value) {
                        //   setState(() {
                        //     val2 = value!;
                        //   });
                      }),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                Text(
                  "Suraj Bombale",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                Switch(
                  value: val,
                  onChanged: (value) {
                    val == value;
                  },
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                Text(
                  "Sagar Khemnar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Member Details",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Divider(),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/g1.png"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sujata Shelke",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                size(5, 0),
                Text(
                  "Student",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                size(5, 0),
                Text(
                  "BCA (batch 1)",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                size(5, 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                    size(5, 0),
                    Text(
                      "567878845858",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    size(5, 0)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.message_rounded,
                      color: Colors.grey,
                    ),
                    size(5, 0),
                    Text(
                      "sujata@gmail.com",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    size(5, 0),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "Sanjay Shelke ",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "(father)",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ])),
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text("80784867586"),
          trailing: ElevatedButton(
            child: Text(
              "Notify",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text("Sunita@gmail.com"),
          trailing: ElevatedButton(
            child: Text(
              "Notify",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "Sunita shelke ",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "(Mother)",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ])),
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text("80784867586"),
          trailing: ElevatedButton(
            child: Text(
              "Notify",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text("Sunita@gmail.com"),
          trailing: ElevatedButton(
            child: Text(
              "Notify",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

cal() {
  return Container(
    height: 200,
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
  );
}
