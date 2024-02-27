import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';
import 'package:vehicle_transport_system/src/ui/screens/SignIn_Screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/map_screen.dart';
import 'package:vehicle_transport_system/src/ui/widget/containerButton.dart';
import 'package:vehicle_transport_system/src/ui/widget/screen_design.dart';

class CategoryScreen extends StatefulWidget {
   const CategoryScreen({super.key,});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screenDesign(context: context ,widget: Column(
          children: [
            SizedBox(height:   150.sp,),
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     InkWell(
                      onTap: (){
                        Get.to(const SignInScreen());
                      },
                      child: const Text("Select Your",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),)),
                     InkWell(
                      onTap: (){
                        Get.to(const SignInScreen());
                      },
                      child: const Text("Category",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),)),
                   ],
                 ),
                 SizedBox(height: 200.sp,),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 containerButton(height: 53, width: 231, ontap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignInScreen()));
                 }, title: "Driver"),
                 SizedBox(height:20.sp),
                 containerButton(height: 53, width: 231, ontap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MapScreen()));
                 }, title: "Passenger"),
                  ],
                )
    
          ],
        )
        ),
      ),
    );
  }
}