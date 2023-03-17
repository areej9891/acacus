import 'package:flutter/material.dart';

class OnboardComponent extends StatefulWidget {
  const OnboardComponent({super.key, required this.text, this.nameImage});
  // ignore: prefer_typing_uninitialized_variables
  final nameImage;
  final String text;

  @override
  State<OnboardComponent> createState() => _OnboardComponentState();
}

class _OnboardComponentState extends State<OnboardComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 60),
          child: Image.asset("assets/blueLogo.png"),
        )),
        Center(
            child: Container(
          width: 324.67,
          height: 253.07,
          alignment: Alignment.center,
          // ignore: prefer_interpolation_to_compose_strings
          child: Image.asset('assets/' + widget.nameImage),
        )),
        Center(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Text(
                  // ignore: unnecessary_string_interpolations
                  "${widget.text}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ))),
      ],
    );
  }
}
