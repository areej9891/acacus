import 'package:acacus_app/screens/auth_screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../helpers/consts.dart';
import '../../widgets/clikabel_widget/mainbutton.dart';

class PinCodeFieldScreen extends StatefulWidget {
  const PinCodeFieldScreen({super.key});

  @override
  State<PinCodeFieldScreen> createState() => _PinCodeFieldScreenState();
}

class _PinCodeFieldScreenState extends State<PinCodeFieldScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "رمز التأكيد",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "قم بإدخال رمز التأكيد الذي تم ارساله للبريد example@mail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "إعادة تعيين",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: mainColor,
                          decoration: TextDecoration.underline),
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                controller: controller,
                cursorHeight: 19,
                enableActiveFill: true,
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                ],
                animationType: AnimationType.slide,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 50,
                    activeFillColor: mainColor.withOpacity(0.8),
                    selectedColor: mainColor,
                    selectedFillColor: mainColor.withOpacity(0.3),
                    activeColor: mainColor.withOpacity(.2),
                    inactiveColor: mainColor.withOpacity(0.02),
                    inactiveFillColor: mainColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                    borderWidth: 1),
                onCompleted: (value) {},
                onChanged: (value) {},
              ),
            ),
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
                        builder: ((context) => const LoginScreen())));
              },
            ),
            MainButton(
              text: "الرجوع",
              withBorder: true,
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              isloading: false,
            ),
          ],
        ),
      ),
    );
  }
}
