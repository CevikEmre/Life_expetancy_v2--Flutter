import 'package:flutter/cupertino.dart';

class LanguageChangeProvider extends ChangeNotifier{
  Locale _currentLocale = Locale("en");

  Locale get currentLocale => _currentLocale;

  void changeLocale (String _locale){
    this._currentLocale= Locale(_locale);
    notifyListeners();

  }
}