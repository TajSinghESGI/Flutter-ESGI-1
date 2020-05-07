import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {

  final title;

  final Function(String) onTap;

  ChoiceItem({Key key, this.title, this.onTap}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ChoiceItemState();

}

class ChoiceItemState extends State<ChoiceItem> {

  var colorSelected = Colors.white;

  void _updateColor() {
    setState(() {
      colorSelected = colorSelected == Colors.white ? Colors.lightBlueAccent : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return GestureDetector(
        onTap: () {
           widget.onTap(widget.title);
          _updateColor();
        },
        child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  color: colorSelected
                ),
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
        ),
      );
  }
}