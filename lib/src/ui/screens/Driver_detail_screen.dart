import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vehicle_transport_system/src/ui/screens/SignIn_Screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/vehical_detail_screen2.dart';
import 'package:vehicle_transport_system/src/ui/widget/screen_design.dart';

class DriverDetailScreen extends StatefulWidget {
  const DriverDetailScreen({super.key});

  @override
  State<DriverDetailScreen> createState() => _DriverDetailScreenState();
}

class _DriverDetailScreenState extends State<DriverDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screenDesign(context: context ,widget: Column(
          children: [
            SizedBox(height:   100.sp,),
                  const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Driver Details",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),),
                   ],
                 ),
                 SizedBox(height:   150.sp,),
                 const Text("No Data",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),),
    
          ],
        )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.to(const VehicalDetailScreen());
          },
          child: const Icon(Icons.add),
          ),
    );
  }
}