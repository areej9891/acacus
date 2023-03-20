import 'package:acacus_app/helpers/consts.dart';
import 'package:acacus_app/widgets/clikabel_widget/place_card.dart';
import 'package:acacus_app/widgets/clikabel_widget/small_card.dart';
import 'package:acacus_app/widgets/input_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "مرحبا محمود!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " استكشف معالم ليبيا بضغطة زر",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: mainColor.withOpacity(.05),
                            borderRadius: BorderRadius.circular(16)),
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.settings,
                          size: 30,
                          color: mainColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: mainColor.withOpacity(.05),
                            borderRadius: BorderRadius.circular(16)),
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: mainColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldWidget(
                perfix: Icon(Icons.search),
                controller: searchcontroller,
                validator: (String? value) {},
                hintText: "ابحث عن معلم، مدينة، او فندق",
                keyboardtype: TextInputType.text),
            Divider(
              height: 15,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "بالقرب مني",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
                height: 100,
                padding: EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SmallCard(),
                        SizedBox(
                          width: 8,
                        ),
                        SmallCard(),
                        SizedBox(
                          width: 8,
                        ),
                        SmallCard(),
                        SizedBox(
                          width: 8,
                        ),
                        SmallCard(),
                        SizedBox(
                          width: 8,
                        ),
                        SmallCard(),
                      ],
                    ))),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "الاكثر شهرة",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return const PlaceCard();
            }))
          ],
        ),
      ),
    ));
  }
}
// ListView.builder(itemBuilder: (context, index) {
//       return const PlaceCard();
//     })
// appBar: AppBar(
//   backgroundColor: Color.fromRGBO(4, 49, 122, 1),
// ),
// body: Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Container(
//     child: Expanded(
//         child: ListView(
//       children: [
//         Column(children: [
//           // Text('{flight.flight_num}'),
//           // Text('{flight.city.name}'),
//           InkWell(
//               child: SingleChildScrollView(
//                   child: Column(
//             children: [
//               Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 elevation: 2,
//                 margin: EdgeInsets.all(10),
//                 child: Column(
//                   children: [
//                     Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               topRight: Radius.circular(15)),
//                           child: Image.asset(
//                             'assets/signInBG.png',
//                             height: 240,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         // Container(
//                         //   height: 240,
//                         //   padding: EdgeInsets.symmetric(
//                         //       horizontal: 20, vertical: 10),
//                         //   alignment: Alignment.bottomLeft,
//                         //   decoration: BoxDecoration(
//                         //       gradient: LinearGradient(
//                         //           begin: Alignment.topCenter,
//                         //           end: Alignment.bottomCenter,
//                         //           colors: [
//                         //         Colors.white.withOpacity(0),
//                         //         Colors.blueGrey.withOpacity(0.8)
//                         //       ],
//                         //           stops: [
//                         //         0.5,
//                         //         1
//                         //       ])),
//                         // ),
//                       ],
//                     ),
//                     Padding(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 16, vertical: 20),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.star,
//                                       color:
//                                           Color.fromRGBO(2, 10, 23, 1),
//                                       size: 20,
//                                     ),
//                                     SizedBox(
//                                       width: 5,
//                                     ),
//                                     Text("4.2",
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.bold,
//                                             color: Color.fromRGBO(
//                                                 2, 10, 23, 1)))
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text("طرابلس الغرب",
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             color: Color.fromRGBO(
//                                                 2, 10, 23, 1))),
//                                     Text(' .أثار المدينة القديمة',
//                                         style: TextStyle(
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.bold,
//                                             color: Color.fromRGBO(
//                                                 2, 10, 23, 1))),
//                                   ],
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   right: 0, left: 20),
//                               child: Text(
//                                   "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.",
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color.fromRGBO(
//                                           2, 10, 23, 1))),
//                             )
//                           ],
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 0, right: 200, bottom: 5),
//                       child: Expanded(
//                           child: ElevatedButton(
//                               onPressed: () => {},
//                               child: Text(
//                                 'معرفة المزيـــد',
//                                 style: TextStyle(
//                                     color:
//                                         Color.fromRGBO(4, 49, 122, 1)),
//                               ),
//                               style: ButtonStyle(
//                                   foregroundColor: MaterialStateProperty.all<Color>(
//                                       Color.fromRGBO(4, 49, 122, 1)),
//                                   shape: MaterialStateProperty.all<
//                                           RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                           side: BorderSide(
//                                               color: Color.fromRGBO(
//                                                   4, 49, 122, 1)),
//                                           borderRadius:
//                                               BorderRadius.circular(8))),
//                                   backgroundColor: MaterialStateProperty.all(Colors.white)))),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           )))
//         ])
//       ],
//     )),
//   ),
// )
// // Center(
// //   child: Column(
// //     mainAxisAlignment: MainAxisAlignment.center,
// //     children: <Widget>[
// //       Padding(
// //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //         child: ClipRRect(
// //           borderRadius: BorderRadius.circular(20.0),
// //           child: Image.network(
// //             'https://media.istockphoto.com/id/1364745633/photo/rear-view-of-a-woman-with-a-hat-while-shes-admiring-an-ancient-temple-in-sicily.jpg?s=1024x1024&w=is&k=20&c=bFalQeJ9MToCxgM5bdHDJVB9IHU7QAdoAtSUYYgEpgg=',
// //             width: size.width,
// //             fit: BoxFit.contain,
// //           ),
// //         ),
// //       ),
// //       Padding(
// //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //         child: ClipRRect(
// //           borderRadius: BorderRadius.circular(20.0),
// //           child: Image.network(
// //             'https://images.unsplash.com/photo-1470095108684-735fe1f71ab7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
// //             width: size.width,
// //             fit: BoxFit.contain,
// //           ),
// //         ),
// //       ),
// //     ],
// //   ),
// // ),
// // floatingActionButton: FloatingActionButton(
// // onPressed: _incrementCounter,
// // tooltip: 'Increment',
// // child: const Icon(Icons.add),
