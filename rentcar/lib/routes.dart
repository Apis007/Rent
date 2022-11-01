import 'package:flutter/material.dart';
import 'package:rentcar/Screens/login/loginscreens.dart';
import 'package:rentcar/Screens/register/registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  loginscreen.routeName: (context) => loginscreen(),
  registerscreen.routeName: (context) => registerscreen()
};
