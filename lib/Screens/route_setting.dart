import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>generatorRoute(RouteSettings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => Admin_Login());
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
          )
        })
}

}