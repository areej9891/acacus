import 'package:acacus_app/helpers/consts.dart';
import 'package:acacus_app/widgets/clikabel_widget/place_card.dart';
import 'package:acacus_app/widgets/clikabel_widget/small_card.dart';
import 'package:acacus_app/widgets/input_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../widgets/clikabel_widget/custom_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              actions: [
                CustomIconButton(
                  onPressed: () {},
                  icon: Icons.favorite_border_outlined,
                  color: mainColor,
                ),
                CustomIconButton(
                    color: mainColor,
                    onPressed: () {},
                    icon: Icons.settings_outlined),
              ],
            ),
            TextFieldWidget(
                perfix: const Icon(Icons.search),
                controller: searchcontroller,
                validator: (String? value) {},
                hintText: "ابحث عن معلم، مدينة، او فندق",
                keyboardtype: TextInputType.text),
            const Divider(
              thickness: 1,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        "بالقرب مني",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const SmallCard();
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        'الاكثر شهرة',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.55,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const PlaceCard(
                          expandable: false,
                        );
                      }),
                ),
                Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: GridView.builder(
                        itemCount: 11,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                crossAxisSpacing: 7,
                                mainAxisSpacing: 7),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ]),
                                child: GridTile(
                                  footer: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          'بنغازي',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Image.network(
                                    'https://tourslibya.com/wp-content/uploads/2018/01/libya-tours-jebel-acacaus-1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }))
              ],
            ),
            // Container(
            //     height: 100,
            //     padding: const EdgeInsets.only(top: 20),
            //     child: SingleChildScrollView(
            //         scrollDirection: Axis.horizontal,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             const SmallCard(),
            //             const SizedBox(
            //               width: 8,
            //             ),
            //             const SmallCard(),
            //             const SizedBox(
            //               width: 8,
            //             ),
            //             const SmallCard(),
            //             const SizedBox(
            //               width: 8,
            //             ),
            //             const SmallCard(),
            //             const SizedBox(
            //               width: 8,
            //             ),
            //             const SmallCard(),
            //           ],
            //         ))),
            // const SizedBox(
            //   height: 24,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     const Text(
            //       "الاكثر شهرة",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 20,
            //           fontWeight: FontWeight.w700),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: size.height * 0.55,
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: ListView.builder(
            //         itemCount: 4,
            //         shrinkWrap: true,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (context, index) {
            //           return const PlaceCard();
            //         }),
            //   ),
            // )
          ],
        ),
      )),
    );
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




 // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: const [
            //         Text(
            //           "مرحبا محمود!",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 16,
            //               fontWeight: FontWeight.w700),
            //         ),
            //         Text(
            //           " استكشف معالم ليبيا بضغطة زر",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 16,
            //               fontWeight: FontWeight.w400),
            //         )
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //               color: mainColor.withOpacity(.05),
            //               borderRadius: BorderRadius.circular(16)),
            //           width: 60,
            //           height: 60,
            //           child: Icon(
            //             Icons.settings,
            //             size: 30,
            //             color: mainColor,
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 20,
            //         ),
            //         Container(
            //           decoration: BoxDecoration(
            //               color: mainColor.withOpacity(.05),
            //               borderRadius: BorderRadius.circular(16)),
            //           width: 60,
            //           height: 60,
            //           child: Icon(
            //             Icons.favorite_border,
            //             size: 30,
            //             color: mainColor,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),