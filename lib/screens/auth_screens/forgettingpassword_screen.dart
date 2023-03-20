import 'package:acacus_app/screens/auth_screens/pincodefield%20_screen.dart';
import 'package:acacus_app/widgets/input_widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/clikabel_widget/mainbutton.dart';

class ForgettingPasswordScreen extends StatefulWidget {
  const ForgettingPasswordScreen({super.key});

  @override
  State<ForgettingPasswordScreen> createState() =>
      _ForgettingPasswordScreenState();
}

class _ForgettingPasswordScreenState extends State<ForgettingPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
        child: Column(
          children: [
            const Text(
              " اعادة تعيين كلمة المرور",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "قم بادخال البريد الألكتروني لتلقي رمز التأكيد",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            TextFieldWidget(
                controller: emailController,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "الرجاء ادخال البريد الالكتروني";
                  }
                  return null;
                },
                label: "البريد الألكتروني ",
                hintText: "ادخال البريد الالكتروني",
                keyboardtype: TextInputType.emailAddress),
            SizedBox(
              height: size.height * 0.1,
            ),
            MainButton(
              text: " متابعة",
              withBorder: false,
              isloading: false,
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: ((context) => const PinCodeFieldScreen())));
              },
              isLoading: true,
            ),
            MainButton(
              text: "الرجوع",
              withBorder: true,
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              isLoading: false,
              isloading: false,
            ),
          ],
        ),
      ),
    );
  }
}
// اعادة تعيين كلمة السر