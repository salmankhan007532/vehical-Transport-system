import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';
import 'package:vehicle_transport_system/src/ui/screens/category_screen.dart';
import 'package:vehicle_transport_system/src/ui/widget/containerButton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Timer.periodic(const Duration(seconds: 3), (timer) { 
  //     Get.to(const CategoryScreen());
  //   });
  // }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [bluecolor1, bluecolor2],
            ),
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: 150.sp),
          child: Column(
            children: [
              Center(
                child: 
                Image.asset("assets/images/Bus.png",height:259.sp ,width: 403.sp,fit: BoxFit.cover,),
              ),
              SizedBox(height: 40.sp,),
               Text("We’re going on a trip.",style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w500,color: Colors.black),),
               SizedBox(height: 20.sp,),
               Padding(
                 padding:  EdgeInsets.only(left: 70.sp),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Are you in?",style: TextStyle(fontSize: 20.sp,color: Colors.black),),
                   ],
                 ),
               ),
               SizedBox(height: 110.sp,),
        
              containerButton(height: 61.sp, width: 352.sp, ontap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CategoryScreen()));
              }, title: "Get Started"),
            ],
          ),
        ),
      ),
    );
  }
}