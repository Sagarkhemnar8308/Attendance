import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Map.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 20, 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Image.asset("images/blogo.png"),
                      title: Text(
                        "the baap Company",
                        style: GoogleFonts.merriweather(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Software Company"),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter OTP",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 38,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 50,
                          width: 38,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 50,
                          width: 38,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 50,
                          width: 38,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 50,
                          width: 38,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 50,
                          width: 38,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                    SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color:Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                            child: IconButton(
                                onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Map(),));
                                },
                                icon: Icon(Icons.arrow_forward)),
                          ),
                        )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Text("Powered by"),
                  Text(
                    "Food Factory",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
