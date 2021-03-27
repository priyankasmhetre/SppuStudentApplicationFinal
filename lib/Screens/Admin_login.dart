import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:firebase_auth/firebase_auth.dart';



class LoginPage extends StatefulWidget{
  LoginPage({this.auth});
  final BaseAuth auth;
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}
enum FormType{
  login,
  register
}
class _LoginPageState extends State<LoginPage> {

  String _email;
  String _password;
  FormType _formType = FormType.login;
  final formKey = new GlobalKey<FormState>();


  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if(_formType == FormType.login){
          String userId = await widget.auth.signInWithEmailAndPassword(_email, _password);
          /* final User user = (await FirebaseAuth.instance
              .signInWithEmailAndPassword(
            email: _email,
            password: _password,
          )).user;*/
          print('Signed in : ${userId}');
        }
        else{
          String userId = await widget.auth.createUserWithEmailAndPassword(_email, _password);
          final User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password,
          )).user;
          print('Registered user : ${userId}');
        }
      }

      catch (e) {
        print("Error : $e");
      }
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter login demo'),
      ),
      body: new Container(
          padding: EdgeInsets.all(16.0),
          child: new Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: buildInput() + buildSubmitButtons(),
              )
          )
      ),
    );
  }

  List<Widget> buildInput() {
    return [
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
        validator: (value) =>
        value.isEmpty
            ? 'Email can\'t be empty'
            : null,
        onSaved: (value) => _email = value,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'password'),
        obscureText: true,
        validator: (value) =>
        value.isEmpty
            ? 'Password can\'t be empty'
            : null,
        onSaved: (value) => _password = value,
      ),
    ];
  }

  List<Widget> buildSubmitButtons() {
    if (_formType == FormType.login) {
      return [
        new RaisedButton(
          onPressed: validateAndSubmit,
          child: new Text(
            'Login', style: new TextStyle(fontSize: 20.0),
          ),
        ),
        new FlatButton(
          child: new Text(
            'Create an account', style: new TextStyle(fontSize: 20.0),),
          onPressed: moveToRegister,
        ),
      ];
    }
    else {
      return [
        new RaisedButton(
          onPressed: validateAndSubmit,
          child: new Text(
            'create an account', style: new TextStyle(fontSize: 20.0),
          ),
        ),
        new FlatButton(
          child: new Text(
            'Have an account? Login', style: new TextStyle(fontSize: 20.0),),
          onPressed: moveToLogin,
        ),
      ];
    }
  }
}
