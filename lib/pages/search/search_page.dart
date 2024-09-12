import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.search,),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary, backgroundColor: Theme.of(context).colorScheme.primary, // Button text color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding for the button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            elevation: 5, // Button elevation (shadow)
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/details');
          },
          child: Text(AppLocalizations.of(context)!.search_details,
          ),
        ),
      ),
    );
  }
}