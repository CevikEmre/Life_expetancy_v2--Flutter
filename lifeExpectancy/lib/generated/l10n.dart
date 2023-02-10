// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Height`
  String get he {
    return Intl.message(
      'Height',
      name: 'he',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get we {
    return Intl.message(
      'Weight',
      name: 'we',
      desc: '',
      args: [],
    );
  }

  /// `How many days a week do you exercise ?`
  String get sp {
    return Intl.message(
      'How many days a week do you exercise ?',
      name: 'sp',
      desc: '',
      args: [],
    );
  }

  /// `How many cigarettes do you smoke per day ?`
  String get sm {
    return Intl.message(
      'How many cigarettes do you smoke per day ?',
      name: 'sm',
      desc: '',
      args: [],
    );
  }

  /// `Life Expectancy`
  String get title {
    return Intl.message(
      'Life Expectancy',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get calculate {
    return Intl.message(
      'Calculate',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get Man {
    return Intl.message(
      'Male',
      name: 'Man',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get Women {
    return Intl.message(
      'Female',
      name: 'Women',
      desc: '',
      args: [],
    );
  }

  /// `Turn Back`
  String get TurnBack {
    return Intl.message(
      'Turn Back',
      name: 'TurnBack',
      desc: '',
      args: [],
    );
  }

  /// `Result Page`
  String get ResultPage {
    return Intl.message(
      'Result Page',
      name: 'ResultPage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
