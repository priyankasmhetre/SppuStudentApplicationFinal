import 'dart:io';

import 'package:file_picker/file_picker.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sppu_student_application/Screens/Api.dart';
import 'package:sppu_student_application/Screens/Button.dart';
import 'package:sppu_student_application/Screens/HomeScreenAdmin.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';




class AddlectureNotes extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<AddlectureNotes> {
  UploadTask task;
  File file;

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file.path) : 'No File Selected';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,
          ), onPressed: () {
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) => TeacherHomeScreen())
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
        backgroundColor :  Color(0xcc5ac18e),
      ),
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

        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ButtonWidget(
                text: 'Add LectureNotes',
                icon: Icons.attach_file,
                onClicked: selectFile,
              ),

              SizedBox(height: 8),
              Text(
                fileName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 48),
              ButtonWidget(
                text: 'Upload LectureNotes',
                icon: Icons.cloud_upload_outlined,
                onClicked: uploadFile,
              ),
              SizedBox(height: 20),
              task != null ? buildUploadStatus(task) : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path;

    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) return;

    final fileName = basename(file.path);
    final destination = 'LectureNotes/$fileName';

    task =FirebaseApi.uploadFile(destination, file);
    setState(() {});

    if (task == null) return;

    final snapshot = await task.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download-Link: $urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
    stream: task.snapshotEvents,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final snap = snapshot.data;
        final progress = snap.bytesTransferred / snap.totalBytes;
        final percentage = (progress * 100).toStringAsFixed(2);

        return Text(
          '$percentage %',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        );
      } else {
        return Container();
      }
    },
  );



}
