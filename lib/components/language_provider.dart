import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = const Locale('en'); // Default language is English

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (_locale == locale) return; // No change if the same locale is selected
    _locale = locale;
    notifyListeners(); // Notify listeners to update the UI
  }
}