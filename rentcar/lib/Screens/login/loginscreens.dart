import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentcar/Components/login/logincomponent.dart';
import 'package:rentcar/size_config.dart';

class loginscreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: logincomponent(),
    );
  }
}
