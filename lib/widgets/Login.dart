import 'dart:convert';

import 'package:livraisonpro/widgets/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {


  Duration get loginTime => Duration(milliseconds: 500);


  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      userType: LoginUserType.name,
      userValidator: (val) {
        return null;
      },
      messages: LoginMessages(userHint: "Username"),
      title: 'Livraison',
      logo: 'assets/images/logo.png',
      onLogin: (data) {
        return Future.delayed(loginTime).then((_) {
          if(data.name == "richi" && data.password == "richi")
            return null;
          if(data.name == "rachad" && data.password == "rachad")
            return null;
          if(data.name == "badr" && data.password == "badr")
            return null;
          return "username or password incorrect";
        });
      },
      onSignup: (data) {
        return Future.delayed(loginTime).then((_) {

          return null;
        });
      },
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      },
      onRecoverPassword: (data) {
        return Future.delayed(loginTime).then((_) {

          return null;
        });
      },
    );
  }
}