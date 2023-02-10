import 'package:flutter/material.dart';
import 'package:life_expectancy/provider/LanguageChangeProvider.dart';
import 'package:life_expectancy/consts/consts.dart';
import 'screens/InputPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:provider/provider.dart';

const List <String> languageList = ["English","Turkish"];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String dropdownValue = languageList.first;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      child: Builder(
        builder: (context) => MaterialApp(
          locale: Provider.of<LanguageChangeProvider>(context, listen: true).currentLocale,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            appBar: AppBar(
              title: Text("Life Expectancy", style: kTitle),
              centerTitle: true,
              backgroundColor: Color(0xFF658864),
              actions: [
                DropdownButton<String>(
                  dropdownColor: Color(0xFF658864),
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_drop_down,size: 30,
                  color: Colors.white,
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  underline: Container(
                    height: 1.5,
                    color: Colors.white,
                  ),
                  onChanged: (String? change) {
                    setState(() {
                      if(change == languageList.first) {
                        dropdownValue = change!;
                        context.read<LanguageChangeProvider>().changeLocale("en");
                        }
                      else {
                        dropdownValue = change!;
                        context.read<LanguageChangeProvider>().changeLocale("tr");
                      }
                      }
                    );
                  },
              items: languageList.map<DropdownMenuItem<String>>((String dropdownValue) {
                return DropdownMenuItem<String>(
                  value: dropdownValue,
                  child: Text(dropdownValue),
                );
              }).toList()
                )
              ]
            ),
            body: InputPage(),
          ),
        ),
      ),
    );
  }
}
