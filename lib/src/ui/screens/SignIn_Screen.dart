import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vehicle_transport_system/src/core/constrain.dart';
import 'package:vehicle_transport_system/src/ui/screens/Driver_detail_screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/SignUp_screen.dart';
import 'package:vehicle_transport_system/src/ui/widget/containerButton.dart';
import 'package:vehicle_transport_system/src/ui/widget/custom_textfield.dart';
import 'package:vehicle_transport_system/src/ui/widget/screen_design.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenDesign(context: context ,widget: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height:   150.sp,),
                   Padding(
                     padding:  EdgeInsets.only(left: 60.sp),
                     child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("Sign In",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),),
                       ],
                     ),
                   ),
                   SizedBox(height: 100.sp,),
                  
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      custonTextField(title: "Email", hintText: "Enter your email"),
                      SizedBox(height: 20.sp,),
                      custonTextField(title: "Password", hintText: "Enter your password"),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40,top: 5),
                            child: Text("Forget Password",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: bluecolor2),),
                          ),
                        ],
                      ),
      
                      SizedBox(height: 100.sp,),
      
                      containerButton(height: 53.sp, width: 231, ontap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DriverDetailScreen()));
                      }, title: "Sign In"),
      
                      SizedBox(height: 20.sp,),
                      InkWell(
                        onTap: (){
                          Get.to(const SignUpScreen());
                        },
                        child: const Text("Sign Up",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: bluecolor1),)),
      
                    ],
                  )
          
            ],
          ),
      )
        ),
    );
  }
}