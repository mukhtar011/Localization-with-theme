import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.search_details,),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.search_details_page_text,
        ),
      ),
    );
  }
}