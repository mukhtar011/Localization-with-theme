import 'package:flutter/material.dart';
import 'package:gen_l10n_example/pages/home/home_detailed.dart';
import 'package:gen_l10n_example/pages/home/home_page.dart';

class HomeNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        Widget page;

        switch (settings.name) {
          case '/':
            page = HomePage();
            break;
          case '/homePageDetailed':  // Ensure the route name is correct
            page = HomePageDetailed();
            break;
          default:
            page = HomePage();
        }

        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}