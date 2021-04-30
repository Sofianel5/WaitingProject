import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tcard/tcard.dart';

class ChoosePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseState();
}

class _ChooseState extends State<ChoosePage> {
  static List<Map<String, dynamic>> people = [
    {
      "name": "Haiyan Niu",
      "description": "Likes to have fun | No family ties to you",
      "age": 26,
      "image": "https://gank.io/images/b0f73f9527694f44b523ff059d8a8841"
    },
    {
      "name": "Snow Goose",
      "description": "Likes to have fun | No family ties to you",
      "age": 26,
      "image": "https://gank.io/images/31f92f7845f34f05bc10779a468c3c13"
    },
    {
      "name": "Shuyu Kong",
      "description": "Housewife | Family ties",
      "age": 30,
      "image": "https://gank.io/images/5ba77f3415b44f6c843af5e149443f94"
    },
    {
      "name": "Manna Wu",
      "description": "Nursing student | No family ties to you",
      "age": 26,
      "image": "https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c"
    },
  ];

  List<Widget> cards = List.generate(
    people.length,
    (int index) {
      return Stack(
        children: [
          Container(
            height: 650,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23.0,
                  spreadRadius: -13.0,
                  color: Colors.black54,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                people[index]["image"],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 650,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${people[index]['name']}, ${people[index]['age']}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(people[index]["description"], style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [TCard(cards: cards, size: Size(400, 650))],
      ),
    );
  }
}
