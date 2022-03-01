import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardsScreen extends StatelessWidget {

  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 16.0, vertical: 8.0),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox (height: 10 ),
          CustomCardType2(),
          SizedBox (height: 10 ),
          CustomCardType2(),
          SizedBox (height: 10 ),
          CustomCardType2(),
          SizedBox (height: 10 ),
          CustomCardType2(),
        ],
      )
    );
  }
}