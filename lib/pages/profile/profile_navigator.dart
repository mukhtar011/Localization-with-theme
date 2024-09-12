import 'package:flutter/material.dart';
import 'package:gen_l10n_example/pages/profile/profile_page.dart';
import 'package:gen_l10n_example/pages/profile/setting_page.dart';

class ProfileNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        Widget page;

        switch (settings.name) {
          case '/':
            page = ProfilePage();
            break;
          case '/settings':
            page = SettingsPage();
            break;
          default:
            page = ProfilePage();
        }

        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}