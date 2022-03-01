import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Megaman', 'Meta Gear', 'Super Smash', 'Final Fantasy'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title:const Text('List View Type 1')
        ),
        body: ListView(
            children: <Widget>[
              ...options.map( (option) =>
                  ListTile(
                    title: Text(option),
                    trailing: const Icon( Icons.arrow_forward_ios, color: AppTheme.primary),
                  )
              ).toList()
            ]
        )
    );
  }
}