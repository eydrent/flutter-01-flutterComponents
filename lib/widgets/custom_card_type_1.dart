
import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            title: Text('Soy un title', style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(Icons.restaurant_menu, color: AppTheme.primary),
            subtitle: Text('Soy un subtitle'),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                  style: AppTheme.textButtonCancel,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ]
            ),
          )
        ]
      )
    );
  }
}