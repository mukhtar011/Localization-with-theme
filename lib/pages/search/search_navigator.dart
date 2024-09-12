import 'package:flutter/material.dart';
import 'package:gen_l10n_example/pages/search/search_page.dart';
import 'package:gen_l10n_example/pages/search/search_page_detailed.dart';

class SearchNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        Widget page;

        switch (settings.name) {
          case '/':
            page = SearchPage();
            break;
          case '/details':
            page = SearchDetailsPage();
            break;
          default:
            page = SearchPage();
        }

        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}