import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:health_app1/controllers/onboarding_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app1/views/sign_page.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPage.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft,
                            colors: [
                          Color.fromRGBO(246, 228, 194, 1),
                              Colors.white,
                        ])),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              _controller.onboardingPage[index].imageAsset,
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                               child: Text(
                                _controller.onboardingPage[index].description,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18, height: 1.5),
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
                children: List.generate(_controller.onboardingPage.length, (index) => Obx((){
                    return Container(
                      margin: EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: _controller.selectedPageIndex.value == index ? Color(0xFFDFB945):Color(0xFFE0DBCA),
                        shape: BoxShape.circle
                      ),
                    );
                  }
                )),
              ),
            ),
            Positioned(
              right: 120,
               bottom: 30,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
              height: 56,
              minWidth: 178,
              color:Color(0xFFE5BF4C),
              child: Text('Keyingisi',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF)
              ),),
              onPressed:(){
            Get.toNamed('/sign_page');
              }
            ))

          ],
        ),
      ),
    );
  }
}
