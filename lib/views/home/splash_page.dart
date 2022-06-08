import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
            padding: EdgeInsets.only(top: 240),
            child: SvgPicture.asset('assets/images/svg1.svg')),
        SizedBox(height: 80),
        Text(
          'E-health sizga sog’lom vazin yo‘qotishga yordam beradi.',
          style: TextStyle(
            color:Color(0xFF333333),
            fontSize: 20, height: 1.4,),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 140,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'English',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )),
            Text(
              '|',
              style: TextStyle(
                color: Color(0xFFCB9A39),
                fontSize: 28,
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed('/onboarding_page');
                },
                child: Text(
                  'O\'zbek',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )),
            Text(
              '|',
              style: TextStyle(
                color: Color(0xFFCB9A39),
                fontSize: 28,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Russian',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )),
          ],
        )
      ]),
    );
  }
}
