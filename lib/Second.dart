import 'package:baapapp/Third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(320,480),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
     return  Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
                  ),
                  Text(
                    "Ashish Shinde",
                    style: GoogleFonts.merriweather(fontSize: 20.sp),
                  ),
                ],
              ),
               Column(
                 children: [
                   size(20.h,0),
                    Container(
                 height: 50.h,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   ),
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
               size(30.h,0 ),
                   Container(
                       height: 220,
                       child: Column(children: [
                         Container(
                           height: 60.h,
                           width: double.infinity.w,
                           decoration: BoxDecoration(
                               color: const Color.fromARGB(255, 216, 213, 213)),
                           child: InkWell(
                             onTap: () {
                               Navigator.push(context,MaterialPageRoute(builder: (Context)=>Third()));
                             },
                             child: Row(
                               children: [
                                 Expanded(
                                   child: ListTile(
                                     leading:Image.asset("images/blogo.png"),
                                     title: Text(
                                       "the baap Company",
                                       style: GoogleFonts.merriweather(
                                           fontSize: 15.sp, fontWeight: FontWeight.bold),
                                     ),
                                     subtitle: Text("Software Company",style: TextStyle(fontSize: 12.sp),),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         size(20.h, 0),
                         Container(
                           height: 60.h,
                           width: double.infinity.w,
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
                                         fontSize: 15.sp, fontWeight: FontWeight.bold),
                                   ),
                                   subtitle: Text("Software Company",style: TextStyle(fontSize: 12.sp),),
                                 ),
                               ),
                             ],
                           ),
                         ),
                        
                       ])),
                 ],
               ),
             
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  ListTile(
                    title: Text(
                      "Powered by",
                      style: TextStyle(color: Colors.grey),
                    ),
                    subtitle: Text(
                      "the baap company",
                      style: GoogleFonts.merriweather(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
      }
    );
  }
}

size(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
  );
}
