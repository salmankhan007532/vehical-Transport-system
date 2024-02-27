

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';

Widget screenDesign ({ required Widget widget, context}){
  return  Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [bluecolor1, bluecolor2],
            ),
            ),
            child: widget,
          ),
          Positioned(
            left: 20.sp,
            top: 30.sp,
            child: Material(
              elevation: 3.sp,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30.sp,
                  width: 30.sp,
                  decoration:  BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(10.sp)
                  ),
                  child: const Center(child: Icon(Icons.arrow_back_ios_new_outlined,color: bluecolor2,),),
                ),
              ),
            ),
          ),
        ],
      );
}