 import "package:flutter/material.dart";
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import './Screens/update_teacher_profile.dart';
import './Screens/teacherProfile.dart';
import 'package:sppu_student_application/Screens/CreateProfile.dart';


void main()=> runApp(myapp());
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    //  home:Createprofile(),
    //home: updateProfile(),
    //home: teacherprofile(),
  //home: update_teacher_profile(),
   //home:HomeScreen(),
    home: TeacherHomeScreen(),
  );






}

