import 'package:flutter/material.dart';
import 'package:health_app1/views/onboarding_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: OnboardingPage(),
    );
  }
}
