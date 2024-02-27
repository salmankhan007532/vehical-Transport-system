import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';
import 'package:vehicle_transport_system/src/ui/screens/Driver_detail_screen.dart';
import 'package:vehicle_transport_system/src/ui/widget/containerButton.dart';
import 'package:vehicle_transport_system/src/ui/widget/custom_textfield.dart';
import 'package:vehicle_transport_system/src/ui/widget/screen_design.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenDesign(context: context , widget: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height:   100.sp,),
                   Padding(
                     padding:  EdgeInsets.only(left: 60.sp),
                     child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("Sign Up",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),),
                       ],
                     ),
                   ),
                   SizedBox(height: 50.sp,),
                  
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      custonTextField(title: "Name", hintText: "Enter your Name"),
                      SizedBox(height: 15.sp,),
                      custonTextField(title: "Email", hintText: "Enter your Email"),
                      SizedBox(height: 15.sp,),
                      custonTextField(title: "Password", hintText: "Enter your password"),
                      SizedBox(height: 15.sp,),
                      custonTextField(title: "Conform Password", hintText: "Enter your Conform password"),
                      // const Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Padding(
                      //       padding: EdgeInsets.only(right: 40,top: 5),
                      //       child: Text("Forget Password",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: bluecolor2),),
                      //     ),
                      //   ],
                      // ),
      
                      SizedBox(height: 50.sp,),
      
                      containerButton(height: 53.sp, width: 231, ontap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DriverDetailScreen()));
                      }, title: "Sign Up"),
      
                     
                    ],
                  )
          
            ],
          ),
      )
        ),
    );
  }
}