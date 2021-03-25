import "package:flutter/material.dart";
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';
import 'package:sppu_student_application/Screens/Profile_student.dart';
import 'package:sppu_student_application/Screens/Qrhomepage.dart';

import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/Verify_student.dart';
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

   //home:Profile_student(),
  //home: updateProfile(),
  //home:teacherProfile(),
    // home: update_teacher_profile(),
  //home:HomeScreen(),
   //home: PasswordReset(),
   // home: Verify_student(),
  home: Registration_student(),
   //home:QrHomePage(),

   //home: login_student(),
   //home: TeacherHomeScreen(),
  );
}

