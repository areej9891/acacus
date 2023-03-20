import 'package:acacus_app/screens/auth_screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/clikabel_widget/mainbutton.dart';
import '../../widgets/input_widgets/custom_textfield.dart';
import '../main_screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController ConfirmpassController = TextEditingController();

  bool hidePass = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Stack(
        children: [
          SizedBox(
            width: 430,
            height: 386,
            child: Image.asset("assets/sighUpBG.png"),
          ),
          Positioned(
              left: 0,
              bottom: 25,
              right: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "!  مرحبا بك في تطبيق اكاكوس",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )),
          Positioned(
              left: 0,
              bottom: 0,
              right: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    " قم بانشاء حساب للاستفادة من مزايا التطبيق",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      TextFieldWidget(
        label: "البريد الاكتروني ",
        hintText: "ادخل البريد الاكتروني ",
        keyboardtype: TextInputType.emailAddress,
        controller: emailController,
        validator: (String? value) {
          if (value!.isEmpty) {
            return "الرجاء ادخال البريد الالكتروني";
          }
          return null;
        },
      ),
      TextFieldWidget(
        obSecureText: hidePass,
        perfix: GestureDetector(
            onTap: () {
              setState(() {
                hidePass = !hidePass;
              });
            },
            child: Icon(
              hidePass ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            )),
        label: " كلمة المرور ",
        hintText: "ادخل  كلمة المرور ",
        keyboardtype: TextInputType.emailAddress,
        controller: passwordController,
        validator: (String? value) {
          if (value!.isEmpty) {
            return "الرجاء ادخال كلمة المرور";
          }
          if (value.length < 8) {
            return " الرجاء ادخال كلمة المرور";
          }

          return null;
        },
      ),
      TextFieldWidget(
        obSecureText: hidePass,
        perfix: GestureDetector(
            onTap: () {
              setState(() {
                hidePass = !hidePass;
              });
            },
            child: Icon(
              hidePass ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            )),
        label: " تأكيد كلمة المرور ",
        hintText: "ادخل تأكيد كلمة المرور ",
        keyboardtype: TextInputType.emailAddress,
        controller: ConfirmpassController,
        validator: (String? value) {
          if (value!.isEmpty) {
            return "الرجاء ادخال كلمة المرور";
          }
          // ignore: unrelated_type_equality_checks
          if (value != ConfirmpassController) {
            return " الرجاء ادخال كلمة المرور مطابقة";
          }

          return null;
        },
      ),
      SizedBox(
        height: size.height * 0.05,
      ),
      MainButton(
        text: "أنشاء حساب",
        withBorder: false,
        isloading: false,
        onPressed: () {
          Navigator.pushReplacement(context,
              CupertinoPageRoute(builder: ((context) => const HomeScreen())));
        },
      ),
      MainButton(
        text: " لديك حساب؟ سجل الدخول ",
        withBorder: true,
        onPressed: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: ((context) => const LoginScreen())));
        },
        isloading: false,
      ),
    ])));
  }
}
