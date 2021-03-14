import"package:flutter/material.dart";
import "package:flutter/cupertino.dart";
class Createprofile1 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CreateprofileState1();
  }

}
class _CreateprofileState1 extends State<Createprofile1>{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
        return Scaffold(
      body:

      Column(

        children:<Widget> [

          Padding(
            padding:EdgeInsets.fromLTRB(20, 20,20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.arrow_back_ios,size: 24,color: Colors.black54,),
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.black),

                  ),
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
                          "Roll No",
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
                          "Course Name",
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
                          "Semester",
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
                          "Year",
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

              ],
            ),

          ),
          ),

        ],
      ),





    );




  }
}