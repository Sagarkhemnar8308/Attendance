import 'package:baapapp/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Heirachi extends StatefulWidget {
  const Heirachi({super.key});

  @override
  State<Heirachi> createState() => _HeirachiState();
}

class _HeirachiState extends State<Heirachi> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350, 450),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return Scaffold(
          backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(35, 20, 20, 10),
          child: SingleChildScrollView(
    
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Heirachi",
                      style: TextStyle(
                          decoration: TextDecoration.underline, color: Colors.grey,fontSize: 22.sp),
                    ),
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
                SizedBox(height: 20.h,),
                Column(
                  children: [
                    Text("Sujata Shelke",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25.sp),),SizedBox(height: 7.h,),
                    Text("HR Manager",style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
                    CircleAvatar(radius: 50,),
                  SizedBox(height: 30.h,),
                    CircleAvatar(radius: 50,),
                    Text("Sushma Avhad(You)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25.sp),),SizedBox(height: 7,),
                    Text("HR Executive",style: TextStyle(fontSize: 15.sp,color: Colors.grey),),SizedBox(height: 7.h,),
                    Text("Your Team",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                            CircleAvatar(radius: 50,),
                            Text("Ravsaheb s",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.sp),),
                            Text("HR assit",style: TextStyle(color: Colors.grey,fontSize: 15.sp,),)
                            ],
                          ),
                          size(0,10),
                           Column(
                            children: [
                               CircleAvatar(radius: 50,),
                                 Text("Kamlesh g",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.sp),),
                            Text("Office boy",style: TextStyle(color: Colors.grey,fontSize: 15.sp,),)
                            ],
                          ), size(0,10),
                          Column(
                            children: [
                               CircleAvatar(radius: 50,),
                                 Text("Swapnil G",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.sp),),
                            Text("Developer",style: TextStyle(color: Colors.grey,fontSize: 15.sp,),)
                            ],
                          ),size(0,10),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
      }
    );
  }
}
