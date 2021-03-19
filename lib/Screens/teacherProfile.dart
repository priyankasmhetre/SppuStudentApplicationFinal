import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";


class teacherprofile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _teacherprofileState();
  }
}
class _teacherprofileState extends State<teacherprofile>{
  get decoration => null;

  @override
  Widget build(BuildContext context) {


    final _screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return  Scaffold(

      body:SingleChildScrollView(
        child: Container(
          height: _screenSize.height * 2.0,
          child: Column(
            children:<Widget> [
              Padding(
                padding:EdgeInsets.fromLTRB(20, 20,20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      child: Icon(Icons.arrow_back,size: 24,color: Colors.black54,),

                    ),

                    Text(
                      "Profile Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(height: 20,width: 20,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: Stack(
                  children:<Widget> [
                    CircleAvatar(
                      radius: 50,

                    ),
                    Positioned(bottom: 1,right: 1,
                        child:Container(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.add_a_photo,color: Colors.white,),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),

                        ))

                  ],
                ),
              ),
              Expanded(child:Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin:Alignment.topRight,

                      colors: [Colors.black54,Color.fromARGB(0, 41, 102, 1)]

                  ),
                ),

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:40,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,20,4),
                            child: Text(
                              "Name",
                              style:TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,

                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,20,4),
                            child: Text(
                              "Email Address",
                              style:TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,

                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,20,4),
                            child: Text(
                              "University tecaher Id No",
                              style:TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,

                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,20,4),
                            child: Text(
                              "Blood Group",
                              style:TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Align(
                            alignment: Alignment.centerLeft,

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20,10,20,4),
                              child: Text(
                                "Mobile No",
                                style:TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            )
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)

                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: 70,
                        child:Align(
                          alignment: Alignment.bottomLeft,

                          child: Text(

                            "Save",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(

                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20))


                        ),
                      ),
                    ),

                  ],
                ),
              ),
              ),
            ],





          ),
        ),
      ),

    );

  }
}