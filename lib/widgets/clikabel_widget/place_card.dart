import 'package:acacus_app/widgets/clikabel_widget/mainbutton.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatefulWidget {
  const PlaceCard({super.key});

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  bool textExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
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
                        "https://media.istockphoto.com/id/1364745633/photo/rear-view-of-a-woman-with-a-hat-while-shes-admiring-an-ancient-temple-in-sicily.jpg?s=1024x1024&w=is&k=20&c=bFalQeJ9MToCxgM5bdHDJVB9IHU7QAdoAtSUYYgEpgg=",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.star_border,
                                color: Color.fromRGBO(2, 10, 23, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.2",
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Text("طرابلس الغرب "),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "أثار المدينة القديمة",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          textExpanded = !textExpanded;
                        });
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
                        children:  [
                          MainButton(
                            text: "قراءة المزيــد",
                            withBorder: true,
                            isLoading: false,
                            widthFromScreen: 0.33,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
    );
  }
}
