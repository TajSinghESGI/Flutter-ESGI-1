import 'package:flutter/material.dart';
import 'package:tajsinghproject/choice_item.dart';

class Header extends StatefulWidget {

  final List<String> item;

  Header({Key key, this.item,}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  String textHeader = 'Choisissez vos cours !';
  static String textHolder = 'Cliquez sur les chips en bas...';

  List<Widget> whichWidget = [
      Align(
        alignment: Alignment.topLeft,
        child: Text(
            textHolder,
            style: TextStyle(fontSize: 18)
        ),
      ),
  ];

  Widget showWidget(){
    if(widget.item.isEmpty){
      return Align(
        alignment: Alignment.topLeft,
        child: Text(
            textHolder,
            style: TextStyle(fontSize: 18)
        ),
      );
    } else {
      return Container(
        child:Padding(
          padding: const EdgeInsets.all(5),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 5,
            runSpacing: 5,
            children: List.generate(widget.item.length, (index) => ChoiceItem(title: widget.item[index])),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        color: Colors.amber,
        alignment: Alignment.topLeft,
        child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: SafeArea(
                    child: Text(
                      textHeader,
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                showWidget(),
              ],
            )
          ),
        ),
      );
    }
}