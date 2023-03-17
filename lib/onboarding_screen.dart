import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/clikabel_widget/mainbutton.dart';
import 'widgets/static_widget/onboarding_component.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastpage = (index == 2);
            });
          },
          controller: _controller,
          children: const [
            OnboardComponent(
              nameImage: 'intro1.png',
              text: '🇱🇾 اكتشف جمال بلادنا الحبيبة ليبيا ',
            ),
            OnboardComponent(
              nameImage: 'intro2.png',
              text: '🗿 احجز رحلات للمعالم المختلفة ',
            ),
            OnboardComponent(
              nameImage: 'intro3.png',
              text:
                  ' ترغب بزيارة مكان ما؟ تعرف على المطاعم والخدمات الموجودة بالقرب منه  🍔',
            ),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                onLastpage
                    ? GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceIn);
                        },
                        child: const MainButton(
                          text: " الدخول ",
                          withBorder: false,
                          isLoading: false,
                          widthFromScreen: 0.23,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceIn);
                        },
                        child: const MainButton(
                          text: " التالي",
                          withBorder: false,
                          isLoading: false,
                          widthFromScreen: 0.23,
                        ),
                      ),
                SmoothPageIndicator(controller: _controller, count: 3),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "تخطي ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
//  Container(
//         child: Column(
//           children: [
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 100, vertical: 70),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
//                 child: Image.asset("assets/blueLogo.png"),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//               child: Container(
//                 child: Image.asset("assets/intro1.png"),
//               ),
//             ),
//           ],
//         ),
//       ),
