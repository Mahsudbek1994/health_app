import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:health_app1/controllers/onboarding_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  final controller = OnboardingController();

  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: controller.selectedPAgeIndex,
                itemCount: controller.onboardingPage.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          Color.fromRGBO(246, 228, 194, 0),
                          Color.fromRGBO(245, 245, 245, 1),
                        ])),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              controller.onboardingPage[index].title,
                            ),
                            SvgPicture.asset(
                              controller.onboardingPage[index].imageAsset,
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                               child: Text(
                                controller.onboardingPage[index].description,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20, height: 1.5),
                              ),
                            ),
                          ]),
                    ),
                  );
                }),
            Positioned(
              left: 140,
              bottom: 120,
              child: Row(
                children: List.generate(controller.onboardingPage.length, (index) => Obx((){
                    return Container(
                      margin: EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: controller.selectedPAgeIndex.value == index ? Color(0xFFDFB945):Color(0xFFE0DBCA),
                        shape: BoxShape.circle
                      ),
                    );
                  }
                )),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
