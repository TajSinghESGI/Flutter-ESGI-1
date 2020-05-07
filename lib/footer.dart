import 'package:flutter/material.dart';
import 'package:tajsinghproject/choice_item.dart';

import 'main.dart';

class Footer extends StatelessWidget {

  static List<String> chipList = [
    "ASM",
    "Flutter",
    "Clean Code",
    "Design Pattern",
    "Swift",
    "Android"
  ];

  final Function(String) onTap;

  const Footer({Key key, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        color: Colors.deepOrangeAccent,
        width: MediaQuery.of(context).size.width,
        child:Padding(
          padding: const EdgeInsets.all(5),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 5,
              runSpacing: 5,
              children: List.generate(chipList.length, (index) => ChoiceItem(title: chipList[index], onTap:onTap,)),
            ),
        ),
      ),
    );
  }

}

