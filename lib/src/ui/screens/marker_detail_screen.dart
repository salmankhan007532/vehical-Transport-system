import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';
import 'package:vehicle_transport_system/src/ui/screens/map_screen.dart';
import 'package:vehicle_transport_system/src/ui/widget/screen_design.dart';

class MarkerDetailScreen extends StatefulWidget {
  const MarkerDetailScreen({super.key});

  @override
  State<MarkerDetailScreen> createState() => _MarkerDetailScreenState();
}

class _MarkerDetailScreenState extends State<MarkerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: screenDesign(context: context ,widget: Column(
            children: [
              SizedBox(height:   100.sp,),
                    const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Details",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),),
                     ],
                   ),
                   SizedBox(height:   80.sp,),
                   Container(
                    height: 577.sp,
                    width: 359.sp,
                    decoration: BoxDecoration(
                      color: bluecolor1,
                      borderRadius: BorderRadius.circular(10.sp),
    
                    ),
                    child: Column(
                      children: [
                         Container(
                          height:210 ,
                          width:359 ,
                          decoration: BoxDecoration(
                          color: bluecolor2,
                          borderRadius: BorderRadius.circular(10.sp),
    
                    ),
                          child: const MapScreen()
                        ),
    
                        customRow(title: "Driver Name", value: "Salman"),
                        customRow(title: "Vefical No", value: "Lahr 0301"),
                        customRow(title: "Color", value: "Black"),
                        customRow(title: "Model", value: "2006"),
                        customRow(title: "Driver No", value: "03355274773"),
                        customRow(title: "Address", value: "Peshawar"),
                        
                      ],
                    ),
                   )
      
            ],
          ))
      ),
    );
  }
}

Widget customRow({var title , var value}){
  
  return Padding(
    padding:  EdgeInsets.only(left: 50.sp, top: 20),
    child: SizedBox(
                height: 20.sp,
              width: 359.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   SizedBox(
                    height: 20.sp,
                    width: 100,
                    child: Text("$title ",style: const TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(width: 40.sp,),
  
                   SizedBox(
                    height: 20.sp,
                    width: 100.sp,
                    child: Text("$value"))
                ],
              ),
              ),
  );
          }