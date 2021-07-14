import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';

import 'package:sppu_student_application/pdf/buttonwidget.dart';
import 'package:sppu_student_application/pdf/page_viewr.dart';
import 'package:sppu_student_application/pdf/pdf_api.dart';



class Fetch_result extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Fetch_result> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:  AppBar(
            leading: IconButton(
             icon: Icon(Icons.arrow_back, color: Colors.white,
              ), onPressed: () {
               Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) => HomeScreen())
          );


            },
  ),
                title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 115,vertical: 80),
                  child: Image.asset("assets/Images/logo.jpeg",
                 height: 30,alignment: Alignment.center,),
                 ),
             ],
  ),
  backgroundColor :  Color(0xcc5ac18e),),
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x665ac18e),
              Color(0x995ac18e),
              Color(0xcc5ac18e),
              Color(0xff5ac18e),
            ]
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            const SizedBox(height: 16),


            ButtonWidget(
                  text: 'View Result',
                  onClicked: () async {
                    final url = 'Results/Result.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    if (file == null) return;
                    openPDF(context, file);
                  },

                ),


          ],
        ),
      ),
    ),
  );



  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );
}