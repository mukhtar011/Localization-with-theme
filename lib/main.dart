import 'package:flutter/material.dart';
import 'package:gen_l10n_example/components/bottom_navigation.dart';
import 'package:gen_l10n_example/components/language_provider.dart';
import 'package:gen_l10n_example/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()), // Add LanguageProvider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    Provider.of<LanguageProvider>(context, listen: false).setLocale(newLocale);
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.themeData,
      locale: languageProvider.locale, // Set the app's locale to the selected language
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const BottomNavigationDemo(), // Your bottom navigation with HomePage as one of the tabs
    );
  }
}