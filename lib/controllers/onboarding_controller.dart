import '../models/onboarding_info.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  var selectedPAgeIndex = 0.obs;
  List<OnboardingInfo> onboardingPage = [
    OnboardingInfo('E-health', 'assets/images/svg1.svg',
        'E-health sizga sog’lom vazin yo‘qotishga yordam beradi.'),
    OnboardingInfo('E-health', 'assets/images/svg2.svg',
       'Kundalik mashqlarni muntazam yo‘lga qo‘yishingiz uchun'),
    OnboardingInfo('E-health', 'assets/images/svg.3.svg',
        'Ovqatlanishni meʼyoriga keltirish va tartibga solishingiz uchun'),
    OnboardingInfo('E-health', 'assets/images/svg4.svg',
        'Natijalarni kuzatib borishingiz va  tahlil qilishingiz uchun yordam beradi'),
    OnboardingInfo('E-health', 'assets/images/svg_5.svg',
       'Ro‘yxatdan o‘ting va bugundan sog‘lom ozishni boshlang!'),
  ];
}
