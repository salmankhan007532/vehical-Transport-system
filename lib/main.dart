import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vehicle_transport_system/src/ui/screens/Driver_detail_screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/SignIn_Screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/SignUp_screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/category_screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/map_screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/marker_detail_screen.dart';
import 'package:vehicle_transport_system/src/ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 941),
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:   const SplashScreen(),
        ),
    );
  }
}
