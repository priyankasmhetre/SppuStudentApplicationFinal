import "package:flutter/material.dart";
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';
import 'package:sppu_student_application/Screens/Profile_student.dart';
import 'package:sppu_student_application/Screens/Qrcode.dart';
import 'package:sppu_student_application/Screens/Verify_student.dart';
import './Screens/Qrhomepage.dart';
import './Screens/scan.dart';

import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/login_student.dart';
import 'package:sppu_student_application/Screens/updateProfile.dart';
import './Screens/update_teacher_profile.dart';
import './Screens/teacherProfile.dart';


import 'Screens/Registration_student.dart';


void main()=> runApp(myapp());
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

   // home:Profile_student(),
  //home: updateProfile(),
  //home:teacherProfile(),
    // home: update_teacher_profile(),
   home:HomeScreen(),
  //home: Registration_student(),
    //home: login_student(),
   //home:GeneratePage(),
   // home: PasswordReset(),
    //home: Verify_student(),
   // home:QrHomePage(),
   // home: ScanPage(),
     //home: TeacherHomeScreen(),
  );
}

