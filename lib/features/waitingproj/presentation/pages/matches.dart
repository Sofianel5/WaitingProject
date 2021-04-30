import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:waitingproj/features/waitingproj/presentation/pages/match.dart';

class MatchesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MatchesState();
}

class _MatchesState extends State<MatchesPage> {
  static List<Map<String, dynamic>> matches = [
    {
      "name": "Manna Wu",
      "description": "Nursing student | No family ties to you",
      "age": 26,
      "image": "https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c"
    },
    {
      "name": "Snow Goose",
      "description": "Likes to have fun | No family ties to you",
      "age": 26,
      "image": "https://gank.io/images/31f92f7845f34f05bc10779a468c3c13"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Matches", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          for (var match in matches)
            GestureDetector(
              onTap: () => Navigator.push(context,  MaterialPageRoute(builder: (_) => MatchPage(match))),
              child: Container(
                  decoration: BoxDecoration(border: match["name"] == "Manna Wu" ? Border(bottom: BorderSide(color: Colors.black)) : null),
                  height: 100,
                  width: double.infinity,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundImage: NetworkImage(match["image"]),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(match["name"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text(match["description"], style: TextStyle(fontSize: 14)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ),
        ],
      ),
    );
  }
}
