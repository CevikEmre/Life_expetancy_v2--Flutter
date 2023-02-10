import 'package:flutter/material.dart';
import '../functions/Calculator.dart';
import 'package:life_expectancy/UserInfo.dart';
import 'package:life_expectancy/consts/consts.dart';
import '../generated/l10n.dart';

class ResultPage extends StatelessWidget {

UserInfo? userInfo;
ResultPage({super.key, this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).ResultPage,
          style: kTitle,
        ),
        backgroundColor: const Color(0xFF658864),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                Calculator(userInfo: userInfo).calculation().round().toString(),
                style: k30TextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF658864),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                S.of(context).TurnBack,
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: "Georgia",
                  color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
