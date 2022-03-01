import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    // TODO: Borrar home
    MenuOption(
      route: '/home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home_max_sharp,
    ),
    MenuOption(
      route: '/listview1',
      name: 'ListView 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: '/listview2',
      name: 'ListView 2',
      screen: const ListView2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: '/alert',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOption(
      route: '/card',
      name: 'Cards Screen',
      screen: const CardsScreen(),
      icon: Icons.credit_card,
    ),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home'     : (BuildContext context) => const HomeScreen(),
  //   '/listview1': (BuildContext context) => const ListView1Screen(),
  //   '/listview2': (BuildContext context) => const ListView2Screen(),
  //   '/alert'    : (BuildContext context) => const AlertScreen(),
  // };
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final menuOption in menuOptions) {
      appRoutes.addAll({
        menuOption.route: (BuildContext context) => menuOption.screen,
      });
    }

    return appRoutes;

  }

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }


}
