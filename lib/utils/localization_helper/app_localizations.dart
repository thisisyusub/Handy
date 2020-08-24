import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Class to handle localization
class AppLocalizations {
  static AppLocalizations _instance;

  /// provides singleton instance of [AppLocalizations]
  static AppLocalizations get instance =>
      _instance ?? (_instance = AppLocalizations());

  /// Helper method to keep the code in the widgets concise
  /// Localizations are accessed using an InheritedWidget "of" syntax
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// Static member to have a simple access to the delegate from the MaterialApp
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String> _localizedStrings = <String, String>{};

  /// method that loads [*.json] file according to selected [Locale]
  Future<bool> load(Locale locale) async {
    final jsonString =
        await rootBundle.loadString('assets/langs/${locale.languageCode}.json');
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  /// method translates current string according to json key
  String translate(String key) {
    return _localizedStrings[key];
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  // add all languages code here
  @override
  bool isSupported(Locale locale) {
    return ['en'].contains(locale.languageCode);
  }

  // load all localization files
  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations.instance;
    await localizations.load(locale);
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
