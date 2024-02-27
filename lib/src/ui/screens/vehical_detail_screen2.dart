import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_transport_system/src/ui/widget/containerButton.dart';
import 'package:vehicle_transport_system/src/ui/widget/custom_textfield.dart';
import 'package:vehicle_transport_system/src/ui/widget/screen_design.dart';

class VehicalDetailScreen extends StatefulWidget {
  const VehicalDetailScreen({super.key});

  @override
  State<VehicalDetailScreen> createState() => _VehicalDetailScreenState();
}

class _VehicalDetailScreenState extends State<VehicalDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: screenDesign(context: context ,widget: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.sp),
            child: Column(
                children: [
                  SizedBox(height:   150.sp,),
                        const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Vehical Details",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),),
                         ],
                       ),
                
                       SizedBox(height: 50.sp,),
                
                      Form(child: Column(
                        children: [
                
                          custonTextField(title: "Driver Name", hintText: "Enter Driver Name"),
                          SizedBox(height: 10.sp,),
                          custonTextField(title: "Driver Number", hintText: "Enter Driver Number"),
                          SizedBox(height: 10.sp,),
                          custonTextField(title: "Vehival Type", hintText: "Enter Driver Vehical type"),
                          SizedBox(height: 10.sp,),
                          custonTextField(title: "Vehical Number", hintText: "Enter Vahical Number"),
                          SizedBox(height: 10.sp,),
                          custonTextField(title: "Vehical Color", hintText: "Enter Vahical Color"),
                          SizedBox(height: 10.sp,),
                          custonTextField(title: "Vehical Model", hintText: "Enter Vahical Model"),
                          SizedBox(height: 10.sp,),
                          custonTextField(title: "Address ", hintText: "Enter Address"),
                
                        ],
                      )),
                      SizedBox(height: 20.sp,),
                
                      containerButton(height: 53.sp, width: 231, ontap: (){}, title: "Save"),
                ],
              ),
          ),
        )
          ),
      ),
    );
  }
}