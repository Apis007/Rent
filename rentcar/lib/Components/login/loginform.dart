import 'package:flutter/material.dart';
import 'package:rentcar/Components/custom_surfix_icon.dart';
import 'package:rentcar/Components/default_button_custom_color.dart';
import 'package:rentcar/Screens/register/registrasi.dart';
import 'package:rentcar/Utils/constant.dart';
import 'package:rentcar/size_config.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInform> {
  final _formkey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        Row(
          children: [
            Checkbox(
                value: remeber,
                onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                }),
            Text("Tetap Masuk"),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Lupa Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "MASUK",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, registerscreen.routeName);
          },
          child: Text(
            "Belum Punya Akun ? Daftar Disini",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    ));
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukkan Username Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/user.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/user.svg",
          )),
    );
  }
}
