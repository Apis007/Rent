import 'package:flutter/material.dart';
import 'package:rentcar/Screens/login/loginscreens.dart';
import 'package:rentcar/routes.dart';
import 'package:rentcar/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Rent Car",
    theme: theme(),
    initialRoute: loginscreen.routeName,
    routes: routes,
  ));
}
