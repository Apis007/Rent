import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentcar/size_config.dart';

class registerscreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      // body: logincomponent(),
    );
  }
}
