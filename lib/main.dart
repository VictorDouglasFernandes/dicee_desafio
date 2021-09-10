import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dice_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(33, 150, 243, 1),
        appBar: AppBar(
          title: Text(
            'Desafio Fred'
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}

