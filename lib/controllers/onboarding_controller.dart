import 'package:flutter/material.dart';
import '../models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();



  List<OnboardingInfo> onboardingPage = [
    OnboardingInfo('assets/images/svg2.svg',
       'Kundalik mashqlarni muntazam yo‘lga qo‘yishingiz uchun'),
    OnboardingInfo('assets/images/svg.3.svg',
        'Ovqatlanishni meʼyoriga keltirish va tartibga solishingiz uchun'),
    OnboardingInfo('assets/images/svg4.svg',
        'Natijalarni kuzatib borishingiz va  tahlil qilishingiz uchun yordam beradi'),
    OnboardingInfo('assets/images/svg_5.svg',
       'Ro‘yxatdan o‘ting va bugundan sog‘lom ozishni boshlang!'),
  ];
}
