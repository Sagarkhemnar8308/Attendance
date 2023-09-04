import 'package:baapapp/Fifth.dart';
import 'package:baapapp/Leaves.dart';
import 'package:baapapp/payslice.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int cur=1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 227, 227, 227),
          mouseCursor: SystemMouseCursors.allScroll,
          currentIndex: cur,
          onTap: (value) {
            cur = value;
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                    child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Fifth() ,));
                    },
                      child: Image.asset(
                        "images/aa.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    height: 30,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveRequest(),));
                      },
                      child: Image.asset(
                        "images/ap.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    height: 40,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => payslice(),));
                      },
                      child: Image.asset(
                        "images/app.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    height: 30,
                    child: Image.asset(
                      "images/appp.png",
                      fit: BoxFit.cover,
                    )),
                label: ""),
          ]);
  }
}