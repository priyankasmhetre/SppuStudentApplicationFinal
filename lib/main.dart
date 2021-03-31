import "package:flutter/material.dart";
import 'package:sppu_student_application/Screens/Add.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';
import 'package:sppu_student_application/Screens/Profile_student.dart';
import 'package:sppu_student_application/Screens/Qrcode.dart';
import 'package:sppu_student_application/Screens/Student_SPV.dart';
import 'package:sppu_student_application/Screens/Verify_student.dart';
import 'package:sppu_student_application/Screens/teacher_Registration.dart';
import 'package:sppu_student_application/Screens/teacher_login.dart';
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
   // home: PasswordReset(),
   // home: Verify_student(),
   //home:Profile_student(),
  //home: updateProfile(),
   //home:HomeScreen(),
   // home: Registration_student(),
   // home: login_student(),
    //home: Student_SPV(),

   // home:GeneratePage(),
    // home:QrHomePage(),
  // home: ScanPage(),

  //  home: TeacherHomeScreen(),
    //home: Add_Screen(),
   // home: teacher_Registration(),
   //home: login_teacher(),
   // home:teacherProfile(),
     home: update_teacher_profile(),
  );
}

