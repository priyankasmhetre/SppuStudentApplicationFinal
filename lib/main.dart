
import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';



import "package:flutter/material.dart";
import 'package:sppu_student_application/Screens/Add.dart';
import 'package:sppu_student_application/Screens/AddLectureNotes.dart';
import 'package:sppu_student_application/Screens/AddSyllabus.dart';
import 'package:sppu_student_application/Screens/AddVideoes.dart';
import 'package:sppu_student_application/Screens/Admin_Profile.dart';
import 'package:sppu_student_application/Screens/Admin_Registration.dart';
import 'package:sppu_student_application/Screens/Button.dart';
import 'package:sppu_student_application/Screens/Fetch.dart';
import 'package:sppu_student_application/Screens/FetchAdmin_Profile.dart';
import 'package:sppu_student_application/Screens/FetchSubject.dart';
import 'package:sppu_student_application/Screens/FetchTeacher_Profile.dart';

import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/HomeScreenAdmin.dart';
import 'package:sppu_student_application/Screens/AddResult.dart';
import 'package:sppu_student_application/Screens/Notification.dart';
import 'package:sppu_student_application/Screens/PasswordReset_Teacher.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';

import 'package:sppu_student_application/Screens/Profile_student.dart';
import 'package:sppu_student_application/Screens/Registration_student.dart';
import 'package:sppu_student_application/Screens/Send_message.dart';


import 'package:sppu_student_application/Screens/Student_SPV.dart';
import 'package:sppu_student_application/Screens/TeacherAdd.dart';
import 'package:sppu_student_application/Screens/Update_admin_Profile.dart';
import 'package:sppu_student_application/Screens/Verify_admin.dart';
import 'package:sppu_student_application/Screens/Verify_student.dart';
import 'package:sppu_student_application/Screens/Verify_teacher.dart';
import 'package:sppu_student_application/Screens/YourSuject.dart';
import 'package:sppu_student_application/Screens/admin_login.dart';
import 'package:sppu_student_application/Screens/delete.dart';
import 'package:sppu_student_application/Screens/demo.dart';
import 'package:sppu_student_application/Screens/finalFetchSubject.dart';



import 'package:sppu_student_application/Screens/login.dart';
import 'package:sppu_student_application/Screens/notify.dart';

import 'package:sppu_student_application/Screens/read.dart';
import 'package:sppu_student_application/Screens/register.dart';


import 'package:sppu_student_application/Screens/select_role.dart';
import 'package:sppu_student_application/Screens/splash_screen.dart';
import 'package:sppu_student_application/Screens/teacher_Registration.dart';
import 'package:sppu_student_application/Screens/teacher_login.dart';


import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';

import 'package:sppu_student_application/Screens/updateProfile.dart';
import 'package:sppu_student_application/Screens/years.dart';
import 'package:sppu_student_application/pdf/FetchLectureNotes.dart';
import 'package:sppu_student_application/pdf/FetchSyllabus.dart';
import 'package:sppu_student_application/pdf/FetchVideo.dart';
import 'package:sppu_student_application/pdf/Fetch_timetable.dart';
import 'package:sppu_student_application/pdf/Fetch_result.dart';
import 'package:sppu_student_application/videofile/MainPage.dart';

import './Screens/update_teacher_profile.dart';
import './Screens/teacherProfile.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp());
}


//void main()=> runApp(myapp());
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
  //home:Profile_student(),
  // home: Fetch(),
  //home: read(),
   // home: delete(),
   // home: updateProfile(),
  // home:teacherProfile(),
   // home: update_teacher_profile(),
   //home:HomeScreen(),
  //home: Registration_student(),
  //  home:login(),
    //home:GeneratePage(),
    // home: PasswordReset(),
   // home: Verify_student(),
    // home:QrHomePage(),
    // home: ScanPage(),
  //home: teacherkey(),
  //home: TeacherHomeScreen(),
  //home:teacher_Register(),
   // home: Student_SPV(),
   // home: Add_Screen(),
   // home: HomePage(),
    //home: PasswordResetTeacher(),
   // home: Add_Screen(),
   // home: Verify_teacher(),
//home:years(),
    //home: FetchTeacherProfile(),
   // home: FetchAdminProfile(),
  //home: FetchSubject(),
   // home: YourSubject(),
  //home:finalFetchSub(),
   //home: Verify_admin(),
  // home: login_admin(),
  // home: sendMassage(),
  //  home: Notify(),
   // home: MainPage(),
  // home: MainPage1(),
   //home: FetchTimetable(),
    //home: AddlectureNotes(),
  //  home: FetchLectureNotes(),
   // home: AddVideoes(),
   // home:  FetchVideo()
    //home: AddResult(),
  //  home: Fetch_result(),
  //  home: FetchSyllabus(),
   // home: MainPageVideo(),




//home: login_teacher(),
 // home: Notification1(),
   //home: register(),
 // home:adminProfile(),
// home: admin_Register(),
   // home: update_admin_profile(),
 // home: HomeScreenAdmin(),

home: splash_screen(),
 // home: AddSyllabus(),
  // home: login(),
 // home: Notification1(),
   // home: DropDownDemo(),



   //

  );
}

