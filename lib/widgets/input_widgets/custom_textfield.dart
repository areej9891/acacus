import 'package:flutter/material.dart';

import '../../helpers/consts.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.controller,
      this.label,
      required this.validator,
      required this.hintText,
      this.obSecureText = false,
      this.perfix, required this.keyboardtype});
  final TextEditingController controller;
  final String? label;
  final String hintText;
  final FormFieldValidator<String?> validator;
  final TextInputType keyboardtype;
  final bool obSecureText;
  final Widget? perfix;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (widget.label != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.label ?? "",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
                controller: widget.controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.validator,
                obscureText: widget.obSecureText,
                decoration: InputDecoration(
                    suffixIcon: widget.perfix,
                    fillColor: mainColor.withOpacity(0.2),
                    filled: true,
                    hintText: widget.hintText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: mainColor.withOpacity(0.5))),
                    focusColor: mainColor.withOpacity(0.5),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: mainColor.withOpacity(0.5)))))
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// import '../../helpers/consts.dart';

// class CustomTextField extends StatefulWidget {
//   const CustomTextField(
//       {super.key,
//       required this.validator,
//       required this.keyboardtype,
//       this.obscurText = false,
//       required this.hint,
//       this.icon,
//       this.labe,
//       required this.controller});
//   final FormFieldValidator<String?> validator;
//   final String? labe;
//   final TextEditingController controller;
//   final TextInputType keyboardtype;
//   final bool obscurText;
//   final String hint;
//   final IconData? icon;
//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Center(
//         child: Column(
//           children: [
//             widget.labe == null
//                 ? Container()
//                 : Directionality(
//                     textDirection: TextDirection.rtl,
//                     child: Row(
//                       children: [
//                         Text(
//                           "${widget.labe}",
//                           style: TextStyle(fontSize: 16, color: darkColor),
//                         ),
//                       ],
//                     ),
//                   ),
//             const SizedBox(
//               height: 5,
//             ),
//             Directionality(
//               textDirection: TextDirection.rtl,
//               child: TextFormField(
//                 validator: widget.validator,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 keyboardType: widget.keyboardtype,
//                 obscureText: widget.obscurText,
//                 decoration: InputDecoration(
//                     hintText: widget.hint,
//                     hintTextDirection: TextDirection.rtl,
//                     hintStyle: const TextStyle(
//                         color: Color.fromARGB(255, 155, 206, 247)),
//                     filled: true,
//                     prefixIcon: Icon(widget.icon),
//                     fillColor: textfieldColor,
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(16),
//                         borderSide: const BorderSide(
//                             color: Color.fromARGB(255, 149, 195, 218),
//                             width: 0.5)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(16),
//                         borderSide:
//                             const BorderSide(color: Colors.blue, width: 2)),
//                     errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(16),
//                         borderSide:
//                             const BorderSide(color: Colors.red, width: 2))),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
