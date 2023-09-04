import 'package:baapapp/First.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 10, 10),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListTile(
                    leading:Image.asset("images/blogo.png"),
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
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome"),
                Text(
                  "Suraj Bombale",
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Paregoan Kh",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Where are you planning to today ?",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 50,
                    width: 130,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      child: Align(
                        alignment: Alignment.centerLeft ,
                        child: Text(
                          "Start trip",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 10,),
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
