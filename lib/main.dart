import 'package:flutter/material.dart';
import 'package:tajsinghproject/choice_item.dart';
import 'package:tajsinghproject/header.dart';
import 'package:tajsinghproject/footer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> itemHeader = [];

  void _updateHeader(String title) {
    setState(() {
      if(itemHeader.contains(title)){
        itemHeader.remove(title);
      } else {
        itemHeader.add(title);
      }
    });
    print(itemHeader);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Project 1 ESGI'
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Header(
                item: itemHeader,
              ),
            ),
            Expanded(
              child: Footer(
                onTap: _updateHeader,
              ),
            )
          ],
        ),
      ),
    );
  }
}
