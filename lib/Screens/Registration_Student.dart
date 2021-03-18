import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
class Registration_Student extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Registration_Student_State();
  }
}
class _Registration_Student_State extends State<Registration_Student> {
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Scaffold(





    body: ListView(
      children:<Widget> [
        Container(
          height:200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/top_header.png",
              ),
            )
          ),
          child: Positioned(
            child:Stack(
              children:<Widget> [
                Positioned(
                  top: 3,
                  child: Row(
                    children:<Widget> [
                      IconButton(icon: Icon(Icons.arrow_back_sharp,color: Colors.white),onPressed: (){},),
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
         SizedBox(height: 10,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            children:<Widget> [
              SizedBox(height:10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(198,156,149,2),
                      blurRadius: 20,
                      offset:Offset(0,10),
                    ),
                ],
                ),
                child: Column(

                  children:<Widget> [

                    Container(

                        decoration: BoxDecoration(
                          border:Border(bottom: BorderSide(
                            color: Colors.grey[300],
                          ))
                        ),
                        child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),


                    Container(
                            decoration: BoxDecoration(
                              border:Border(bottom: BorderSide(
                                color: Colors.grey[300],
                              ))
                          ),
                            child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Elligibillity No",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),


                    Container(

                      decoration: BoxDecoration(
                          border:Border(bottom: BorderSide(
                            color: Colors.grey[300],
                          ))
                      ),

                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "University Mail Adress",
                            hintStyle: TextStyle(color: Colors.black),

                          ),
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          border:Border(bottom: BorderSide(
                            color: Colors.grey[300],
                          ))
                      ),

                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Select Department",
                            hintStyle: TextStyle(color: Colors.black),

                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:Border(bottom: BorderSide(
                            color: Colors.grey[300],
                          ))
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Select Course",
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),




              ],





              ),

              ),



        ],
              ),

              ),

          ],
    ),
    ),
  );


  }

}