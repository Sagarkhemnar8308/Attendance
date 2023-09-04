import 'package:baapapp/BottomBar.dart';
import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class payslice extends StatefulWidget {
  const payslice({super.key});

  @override
  State<payslice> createState() => _paysliceState();
}

class _paysliceState extends State<payslice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
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
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "jeff Walkar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: const Color.fromARGB(255, 65, 65, 65)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Administator,",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      TextSpan(
                        text: "food factory",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.grey),
                      )
                    ]))
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: 30,
                        child: Image.asset(
                          "images/a.png",
                          fit: BoxFit.cover,
                        )),
                    Container(
                        height: 45,
                        child: Builder(
                          builder: (context) => IconButton(
                              onPressed: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              icon: Icon(
                                Icons.more_vert,
                                size: 30,
                              )),
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payslips",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Tax Declaration",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))))
                  ],
                ),
                Divider(),
                Row(
                  children: [Text("No payslips found")],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 85,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 236, 232, 232)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("March ,2022"),
                    SizedBox(height: 5,),
                    Text("Rs . 102,00,000"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gross Rs,110.00.00"),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor:
                                  Color.fromARGB(255, 227, 227, 227),
                            ),
                            child: Text(
                              "Download",
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Container(
              height: 85,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 236, 232, 232)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("March ,2022"),
                    SizedBox(height: 5,),
                    Text("Rs . 102,00,000"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gross Rs,110.00.00"),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor:
                                  Color.fromARGB(255, 227, 227, 227),
                            ),
                            child: Text(
                              "Download",
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: endDrawer(),
      bottomNavigationBar:BottomBar() ,
    );
  }
}
