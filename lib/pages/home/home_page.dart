import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gen_l10n_example/components/language.dart';
import 'package:gen_l10n_example/components/language_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homePage),
        actions: [
          IconButton(
            icon: const Icon(Icons.public),
            onPressed: () {
              _showLanguageDialog(context);
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/homePageDetailed');
          },
          child: Text(AppLocalizations.of(context)!.homePage),
        ),
      ),
    );
  }

  // Function to show language selection dialog
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)!.select_language),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: Language.languageList().map((language) {
              return ListTile(
                title: Text(language.name),
                onTap: () {
                  Provider.of<LanguageProvider>(context, listen: false)
                      .setLocale(Locale(language.languageCode));
                  Navigator.of(context).pop(); // Close the dialog
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}