import 'package:flutter/material.dart';
import './pages/my_home_page.dart';
import './pages/onboarding_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waffle Native',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ScreenState(hasUserId: true),
    );
  }
}

class ScreenState extends StatelessWidget {
  ScreenState({Key key, this.hasUserId}) : super(key: key);
  final bool hasUserId;

  @override
  Widget build(BuildContext context) {
    if (hasUserId) {
      return MyHomePage(title: 'Flutter Demo Home Page');
    } else {
      return OnboardingPage();
    }
  }
}