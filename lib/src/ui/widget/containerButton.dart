import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';


Widget containerButton({required double height, required double width, required ontap, required title}){
  return InkWell(
    onTap: ontap,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Center(
        child: Text("$title",style:  TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700, color: bluecolor2),),
      ),
    ),
  );
}