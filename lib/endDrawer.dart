import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Approval.dart';
import 'Heirachi.dart';
import 'LeavesRequest.dart';
import 'Tabbar.dart';

class endDrawer extends StatefulWidget {
  const endDrawer({super.key});

  @override
  State<endDrawer> createState() => _endDrawerState();
}

class _endDrawerState extends State<endDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        width: 230,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Menu Items",
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => app(),));
                        },
                        child: Text(
                          "Mark Attendace",
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                        )),
                    size(15, 0),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Leaves(),));
                        },
                        child: Text(
                          "Leave Requests",
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                        )),
                    size(15, 0),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Regularization",
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                        )),
                    size(15, 0),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Heirachi(),));
                        },
                        child: Text(
                          "Hiearchies",
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                        )),
                    size(15, 0),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Company Details",
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                        )),
                    size(15, 0),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder:(context) =>Approval() ,));
                            },
                            child: Text(
                              "Approvals",
                              style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                            )),
                            Text("(1)",style: GoogleFonts.poppins(color:Colors.red,fontSize: 20),)
                      ],
                    ),
                    size(15, 0),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Profile",
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                        )),
                    size(15, 0),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

size(double height ,double width){
  return SizedBox(
       height: height,
       width: width,
  );
}