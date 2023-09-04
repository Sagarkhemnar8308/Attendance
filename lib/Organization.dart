import 'package:baapapp/Phone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Organization extends StatefulWidget {
  const Organization({super.key});

  @override
  State<Organization> createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,20,10,10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 100*00.5,),
              Column(
               
                children:[ Column(
                  children: [
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(255, 204, 203, 203)),
                          borderRadius: BorderRadius.circular(27,)),
                      child: SearchBar(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 227, 227, 227),
                        ),
                        hintText: "Search your Organization",
                        hintStyle: MaterialStatePropertyAll(
                          TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                      Column(
                        children: [
                          Container(
                            height: 220,
                            child: Column(children: [
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 216, 213, 213)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (Context)=>Phone(),));
                                  },
                                  child: Row(
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
                                ),
                              ),
                                 SizedBox(height: 20,),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 216, 213, 213)),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        leading: Icon(Icons.power_off_outlined),
                                        title: Text(
                                          "Infosys India Pvt Ltd",
                                          style: GoogleFonts.merriweather(
                                              fontSize: 15, fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text("Software Company"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                            ])),
                        ],
                      ),
                  ],
                ),
                ],
              ),
                    
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Text("Powered by"),
                  Text("Food Factory",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
          ],
        ),
      ),
    );
  }
}