import 'package:flutter/material.dart';
import 'package:rest_app/generated/i18n.dart';

class SpecifiedLocalizationDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  //class static vars:
  //onLocaleChange should be bind to MaterialApp function containing setState().
  static LocaleChangeCallback onLocaleChange;

  // for instance
  final Locale overriddenLocale;

  const SpecifiedLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;



  @override
  Future<WidgetsLocalizations> load(Locale locale) =>
      S.delegate.load(overriddenLocale);

  @override
  bool shouldReload(SpecifiedLocalizationDelegate old) => true;
}

typedef void LocaleChangeCallback(Locale locale);