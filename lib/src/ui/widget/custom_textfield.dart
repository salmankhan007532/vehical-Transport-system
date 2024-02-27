

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget custonTextField({var title ,var hintText, var suffixIcon}){
  return SizedBox(
    height: 105.sp,
    width: 341.sp,
    //color: Colors.green,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                 Padding(
                   padding:  EdgeInsets.only(left:12.0.sp, bottom: 6.sp),
                   child: Text("$title",style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black),),
                 ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    suffixIcon: suffixIcon,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    filled: true,
                    fillColor: Colors.white
                  ),
                )

      ],
    ),
  );
}