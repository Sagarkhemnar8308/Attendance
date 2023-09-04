import 'package:baapapp/VerifyOtp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  TextEditingController t1 = TextEditingController();
  int? ten=10;

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
                        "Get started by logging in your Account",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: GlobalKey(),
                    child: Column(
                      children: [
                        TextFormField(
                          maxLength: ten,
                          validator: (value) {
                            if (t1.text.length != 10) {
                              return 'Please Enter Valid number';
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          controller: t1,
                          decoration: InputDecoration(
                              counterText: '',
                              hintText: "  Enter your Phone no",
                              focusColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Verify(),
                                      ));
                                },
                                icon: Icon(Icons.arrow_forward)),
                          ),
                        )
                      ],
                    ),
                  ),
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
