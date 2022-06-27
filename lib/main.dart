import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/home.dart';
import 'package:health_app1/views/splash/splash_page.dart';
import 'package:health_app1/views/onboarding_page/onboarding_page.dart';
import 'package:health_app1/views/registration/dietolog/dietolog_registration.dart';
import 'package:health_app1/views/registration/registration_page.dart';

import 'package:health_app1/views/sign_page/sign_page.dart';
import 'package:health_app1/views/sign_page/signup_page.dart';
import 'package:health_app1/views/registration/user/user_info_registration.dart';
import 'package:health_app1/views/registration/user/user_registration.dart';
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
      home: SplashPage(),
      getPages: [
        GetPage(name: '/home_page', page: () => HomePage()),
        GetPage(name: '/sign_page', page: () => SignPage()),
        GetPage(name: '/onboarding_page', page: () => OnboardingPage()),
        GetPage(name: '/sign_up_page', page: () => SignupPage()),
        GetPage(name: '/registration_page', page: () => RegistrationPage()),
        GetPage(name: '/user_registration', page: () => UserRegistration()),
        GetPage(name: '/user_info_registration', page: ()=> UserInfoRegistration()),
        GetPage(name:'/dietolog_registration', page: () =>DietologRegistrationPage(),),

      ],

    );
  }
}

