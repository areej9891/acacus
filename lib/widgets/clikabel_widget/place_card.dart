import 'package:acacus_app/widgets/clikabel_widget/mainbutton.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatefulWidget {
  const PlaceCard({super.key, this.expandable = true});
  final bool expandable;

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  bool textExpanded = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        width: size.width * 0.9,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1589177900075-9d13b4451617?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80",
                            fit: BoxFit.cover,
                            height: size.width * 0.5,
                            width: size.width * 0.9,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.star_border),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('4.3'),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text('طرابلس الغرب'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'آثار المدينة القديمة',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (widget.expandable) {
                              setState(() {
                                textExpanded = !textExpanded;
                              });
                            }
                            ;
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.",
                              maxLines: textExpanded ? 10 : 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding( 
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              MainButton(
                                text: "قراءة المزيــد",
                                withBorder: true,
                                widthFromScreen: 0.33,
                                isloading: false,
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Positioned(
                left: 10,
                top: 10,
                right: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(200)),
                        width: 60,
                        height: 60,
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
