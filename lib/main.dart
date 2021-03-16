import 'package:flutter/material.dart';
import 'package:sppu_student_application/Screens/CreateProfile.dart';

import 'package:sppu_student_application/Screens/updateProfile.dart';



void main()=> runApp(myapp());
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
      home:Createprofile(),
    );

}

