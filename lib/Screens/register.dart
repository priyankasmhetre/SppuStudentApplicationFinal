
import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/Verify_student.dart';
import 'package:sppu_student_application/Screens/login.dart';
import 'package:sppu_student_application/Screens/select_role.dart';
import 'package:auto_size_text/auto_size_text.dart';


class register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}






class student_State extends State<register> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();
  String  _error;

  bool _isSuccess;
  String _userEmail;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,
            ), onPressed: () {
            Navigator.of(context)
                .push(
                MaterialPageRoute(
                  builder: (context) => select_role())
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
        body: Form(
          key: _formKey,
          child: AnnotatedRegion <SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: GestureDetector(
                child: Stack(

                  children:<Widget> [
                    SizedBox(height: _height * 0.025),
                    showAlert(),
                    SizedBox(height: _height * 0.025),
                    Container(





                      height: double.infinity,
                      width: double.infinity,

                      decoration: BoxDecoration(
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
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),

                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 120,
                        ),
                        child: Column(

                          children:<Widget> [
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Text(
                                "Registration  Page",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight:FontWeight.bold,

                                ),
                              ),
                            ),

                            SizedBox(
                              height: 50,
                            ),
                            buildName(),
                            SizedBox(
                              height: 20,
                            ),
                            buildEmail(),
                            SizedBox(
                              height: 20,
                            ),
                            buildPassword(),
                            SizedBox(
                              height: 20,
                            ),
                            buildconfirmPassword(),
                            SizedBox(
                              height: 10,
                            ),
                            Loginbutton(),
                            forgotbutton(),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              )
          ),
        )



    );





  }
  Widget showAlert() {
    if (_error != null) {
      return Container(
        color: Colors.amberAccent,
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.error_outline),
            ),
            Expanded(
              child: AutoSizeText(
                _error,
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _error = null;
                  });
                },
              ),
            )
          ],
        ),
      );
    }
    return SizedBox(
      height: 0,
    );
  }
  AutoSizeText buildHeaderText() {
    String _headerText;
    if (_auth ==_auth.currentUser) {
      _headerText = "Create New Account";
    } else {
      _headerText = "Sign In";
    }
    return AutoSizeText(
      _headerText,
      maxLines: 1,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),
    );
  }



  void _registerAccount()async{
  try {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;

    if (user != null) {
      Navigator.of(context)
          .push(
          MaterialPageRoute(
            builder: (context) => Verify_student(),)
      );

      await user.updateProfile(displayName: _displayName.text);
      final user1 = _auth.currentUser;
      /* Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MainPage(
            user: user1,
          )));*/
    } else {
      _isSuccess = false;
    }
  }catch(e){
    print(e);
    _emailController.text;
    _passwordController.text;
    showAlertDialog1(context);
    setState(() {
      _error=e.message;
    });

       }
  }
  showAlertDialog1(BuildContext context) {
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("Unable to register Please enter all field"),
      actions: [

      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget  buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Email",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            validator: (String value){
              if(value.isEmpty)
              {
                return 'Please a Enter Email';
              }
              if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                return 'Please a valid Email';
              }
              return null;
            },
            onSaved: (String value){
              _emailController.text = value;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12, top: 14),
              hintText: "Email",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget  buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),

          child: Text(
            "Name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller:_displayName,
            keyboardType: TextInputType.text,

            style: TextStyle(
              color: Colors.black87,
            ),
            validator: (String value){
              if(value.isEmpty){
                return "Please enter a name";
              }
              return null;
            },
            onSaved: (String value){
              _displayName.text = value;
            },


            decoration: InputDecoration(

              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12, top: 14),
              hintText: "Name",
              hintStyle: TextStyle(
                color: Colors.black,

              ),

            ),

          ),


        ),

      ],

    );
  }
  Widget  buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Password",
            style: TextStyle(
              color: Colors.white,
              fontSize:20,
              fontWeight:FontWeight.bold,

            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0,2),
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller: _passwordController,
            // keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            validator: (String value){
              if(value.isEmpty)
              {
                return 'Please a Enter Password';
              }
              return null;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left:12,top:14),
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
            obscureText: true,
          ),

        ),

      ],

    );

  }
  Widget  buildconfirmPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " Confirm Password",
            style: TextStyle(
              color: Colors.white,
              fontSize:20,
              fontWeight:FontWeight.bold,

            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0,2),
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller: _confirmpasswordController,
            // keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            validator: (String value){
              if(value.isEmpty)
              {
                return 'Please a re-enter Password';
              }
              print( _passwordController.text);

              print(_confirmpasswordController.text);

              if(_passwordController.text!=_confirmpasswordController.text){
                return "Password does not match";
              }
              return null;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left:12,top:14),
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
            obscureText: true,
          ),

        ),

      ],

    );

  }



  Widget Loginbutton()
  {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,

      child: RaisedButton(
        elevation: 5,
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            _registerAccount();

          }
         /* Navigator.of(context)
              .push(
              MaterialPageRoute(
                builder: (context) => Verify_student())
          );*/
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          "Register",
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight:FontWeight.bold,

          ),

        ),
      ),

    );
  }

  Widget forgotbutton() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () =>
        {
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                builder: (context) => login(),)
          ),
        },


        padding: EdgeInsets.only(right: 0),

        child: Text(
          "Already Register? Login Here",

          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

        ),

      ),

    );
  }



}