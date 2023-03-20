import 'package:acacus_app/screens/auth_screens/forgettingpassword_screen.dart';
import 'package:acacus_app/screens/auth_screens/register_screen.dart';
import 'package:acacus_app/screens/main_screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helpers/consts.dart';
import '../../widgets/clikabel_widget/mainbutton.dart';
import '../../widgets/input_widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidePass = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 430,
                  height: 386,
                  child: Image.asset("assets/signInBG.png"),
                ),
                Positioned(
                    left: 0,
                    bottom: 12,
                    right: 0,
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
            const SizedBox(
              height: 8,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: ((context) =>
                                const ForgettingPasswordScreen())));
                  },
                  child: Text(
                    "إعادة تعيين",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: mainColor,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const Text(
                  "هل نسيت كلمة المرور ؟",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            MainButton(
              text: "تسجيل دخول",
              withBorder: false,
              isloading: false,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: ((context) => const HomeScreen())));
              },
            ),
            MainButton(
              text: "ليس لديك حساب؟ سجل الآن",
              withBorder: true,
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: ((context) => const RegisterScreen())));
              },
              isloading: false,
            ),
          ],
        ),
      ),
    );
  }
}
