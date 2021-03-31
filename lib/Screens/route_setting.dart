import 'package:flutter/material.dart';
import 'package:sppu_student_application/Screens/Admin_Login.dart';
import 'Admin_signup.dart';

class RouteGenerator {
  static Route<dynamic>generatorRoute(RouteSettings){
    var settings;
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/Admin_signup' :
        if(args is String){
          return MaterialPageRoute(
              builder: (_) => Admin_signup(),
          );
    }
        return _errorRoute();
  }
}

static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(
        builder: (_) {
          return AlertDialog(
            title: Text("Error"),
          );
        }
        );
}

}