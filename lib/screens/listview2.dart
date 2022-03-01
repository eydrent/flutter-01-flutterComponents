import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Megaman', 'Meta Gear', 'Super Smash', 'Final Fantasy'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text('List View Type 2'),
          elevation: 0,
          backgroundColor: Colors.indigoAccent,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(options[i]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.indigoAccent,
              ),
              onTap: () {
                final game = options[i];
                print(game);
              },
            );
          },
          separatorBuilder: ( _ , __ ) => const Divider(),
        )
    );
  }
}