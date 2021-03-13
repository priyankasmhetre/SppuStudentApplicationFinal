import "package:flutter/material.dart";
class CreateProfile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CreateProfileState();
  }

}
class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Padding(
          padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
        child:ListView(
          children: <Widget>[
            nameTextField(),
          ],
        )
    ),
    );
  }
    Widget nameTextField(){
      return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide:BorderSide(
              color: Colors.lightBlue,
            )
          )
        )

      );


  }
}