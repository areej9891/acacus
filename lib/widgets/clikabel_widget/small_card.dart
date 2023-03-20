import 'package:flutter/material.dart';

import '../../helpers/consts.dart';

class SmallCard extends StatefulWidget {
  const SmallCard({super.key});

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 78,
      width: 300,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 166, 207, 240),
                blurRadius: 1.0,
                spreadRadius: 0.5)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.star_border,
                size: 20,
                color: darkColor,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "2.3",
                style: TextStyle(
                    color: darkColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "مسرح الكالسيوم",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        "2.3 كم",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 62,
                width: 67,
                child: Image.asset("assets/smallcard.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
