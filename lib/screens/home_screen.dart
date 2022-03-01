import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Components in Flutter'),
          elevation: 0,
        ),
        // body: ListView.separated(
        //   itemCount: AppRoutes.menuOptions.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: const Icon(Icons.arrow_right),
        //       title: Text('Item $index'),
        //       onTap: () {
        //         Navigator.pushNamed(context, '/listview1');
        //       },
        //     );
        //   },
        //   separatorBuilder: ( _ , __ ) => const Divider(),
        // ));
        body: ListView.separated(
          itemCount: menuOptions.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon( menuOptions[index].icon ),
              title: Text( menuOptions[index].name ),
              onTap: () {
                Navigator.pushNamed(context, menuOptions[index].route );
              },
            );
          },
          separatorBuilder: ( _ , __ ) => const Divider(),
        ));
  }
}