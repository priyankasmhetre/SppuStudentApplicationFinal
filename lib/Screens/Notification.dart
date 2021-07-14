import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
class Notification1 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Notification1> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings androidInitializationSettings;
  IOSInitializationSettings iosInitializationSettings;
  InitializationSettings initializationSettings;
  String _selectedParam;
  String task;
  int val;




  @override
  void initState() {
    super.initState();
    initializing();
  }


  void initializing(){
    androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');

    initializationSettings = InitializationSettings(
        android: androidInitializationSettings);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: notificationSelected);

  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "Channel ID", "Desi programmer", "This is my channel",
        importance: Importance.max);

    var generalNotificationDetails = new NotificationDetails(android: androidDetails);

    // await fltrNotification.show(
    //     0, "Task", "You created a Task", generalNotificationDetails, payload: "Task");
    var scheduledTime;
    if (_selectedParam == "Hour") {
      scheduledTime = DateTime.now().add(Duration(hours: val));
    } else if (_selectedParam == "Minute") {
      scheduledTime = DateTime.now().add(Duration(minutes: val));
    } else {
      scheduledTime = DateTime.now().add(Duration(seconds: val));
    }

    flutterLocalNotificationsPlugin.schedule(
        1, "SPPU", task, scheduledTime, generalNotificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:  Color(0xcc5ac18e),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,

            ),
            onPressed: () {
              Navigator.of(context)
                  .push(
                  MaterialPageRoute(
                    builder: (context) => TeacherHomeScreen(),)
              );
            },
          ),


          title: Text("Add Upcoming Exams and Notification",
            style: TextStyle(color: Colors.black,
                fontSize: 14),
          )

      ),
      //backgroundColor: Colors.greenAccent.shade200,
      body: Center(
        child: Container(
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x665ac18e),
                    Color(0x995ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff5ac18e),
                  ]
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                    fillColor: Color(0xcc5ac18e),
                  ),
                  onChanged: (_val) {
                    task = _val;
                  },
                ),
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xcc5ac18e),
                        border: Border.all()
                    ),

                    child: DropdownButton(


                      value: _selectedParam,
                      items: [
                        DropdownMenuItem(
                          child: Text("Seconds"),
                          value: "Seconds",
                        ),
                        DropdownMenuItem(
                          child: Text("Minutes"),
                          value: "Minutes",
                        ),
                        DropdownMenuItem(
                          child: Text("Hour"),
                          value: "Hour",
                        ),

                      ],
                      hint: Text(
                        "Select Your Field.",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onChanged: (_val) {
                        setState(() {
                          _selectedParam = _val;
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xcc5ac18e),
                        border: Border.all()
                    ),
                    child: DropdownButton(



                      value: val,
                      items: [
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("2"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("3"),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text("4"),
                          value: 4,
                        ),

                        DropdownMenuItem(
                          child: Text("5"),
                          value: 5,
                        ),


                      ],
                      hint: Text(
                        "Select Value",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onChanged: (_val) {
                        setState(() {
                          val = _val;
                        });
                      },
                    ),
                  ),
                ],
              ),
              RaisedButton(
                color:  Color(0xcc5ac18e),
                onPressed: _showNotification,
                child: new Text('Set Task With Notification', style: TextStyle(color: Colors.black,),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future notificationSelected(String payload) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("$payload"),
      ),
    );
  }
}