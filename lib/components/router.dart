import 'package:flutter/material.dart';
import 'package:flutter_template/views/home/home_view.dart';

import 'current_theme.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        // final AccountType args = settings.arguments! as AccountType;
        // accountType: args,
        return MaterialPageRoute<dynamic>(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => Scaffold(
              body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Whoops! Looks like you lost at: ${settings.name}',
                        style: CurrentTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Press the back button to go to the previous screen',
                        textAlign: TextAlign.center,
                        style: CurrentTheme.subtitle2,
                      ),
                    ],
                  )),
            ));
    }
  }

  void test() {}
}
