import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/home_page.dart';
import 'package:health_app1/views/onboarding_page.dart';
import 'package:health_app1/views/registration_page.dart';

import 'package:health_app1/views/sign_page.dart';
import 'package:health_app1/views/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: '/sign_page', page: () => SignPage()),
        GetPage(name: '/onboarding_page', page: () => OnboardingPage()),
        GetPage(name: '/sign_up_page', page: () => SignupPage()),
        GetPage(name: '/registration_page', page: () => RegistrationPage()),
      ],
    );
  }
}

