import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";


class updateProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return updateprofileState();
  }
}
class updateprofileState extends State<updateProfile>{
  String valueChoose;
  String valueChoosen;
  List listitem = ['1','2','3'];
  List listitems =  ['1','2','3','4','5','6'];

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
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,20,4),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)
                          ),
                          child: DropdownButton(
                            hint: Text("    Select the Year",
                              style: TextStyle(
                                color:Colors.red,
                              ),),
                            icon: Icon(Icons.arrow_drop_down),
                            isExpanded: true,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                            value: valueChoose,
                            onChanged: (newValue){
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: listitem.map((valueitem) {
                              return DropdownMenuItem(
                                value: valueitem,
                                child: Text(valueitem),
                              );
                            }).toList(),
                          ),
                        ),
                      ),

                    ),

                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,20,4),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0,color: Colors.black)
                          ),
                          child: DropdownButton(
                            hint: Text("    Select the Semester",
                              style: TextStyle(
                                color: Colors.red,
                              ),

                            ),
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 16,
                            isExpanded: true,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                            value: valueChoosen,
                            onChanged: (newValue){
                              setState(() {
                                valueChoosen = newValue;


                              });
                            },
                            items: listitems.map((valueitems) {
                              return DropdownMenuItem(
                                value: valueitems,
                                child: Text(valueitems),
                              );
                            }).toList(),
                          ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,

                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,20,4),
                            child: Text(
                              "Address",
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


                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: 70,
                        child:Align(
                          alignment: Alignment.bottomLeft,

                          child: Text(

                            "Update",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
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