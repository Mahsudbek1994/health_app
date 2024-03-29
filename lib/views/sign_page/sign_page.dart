import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                Color.fromRGBO(246, 228, 194, 0),
            Color.fromRGBO(245, 245, 245, 1),
            ])),
        child: Column(
          children: [
             Padding(
                padding: EdgeInsets.only(top: 46),
                child: SvgPicture.asset('assets/images/svg1.svg',
                height: 30                                                                                   ,width: 30,),),

            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
              child: SvgPicture.asset('assets/images/svg_6.svg'),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Positioned(
                  child: MaterialButton(
                onPressed: () {
                  Get.toNamed('/sign_up_page');
                },
                minWidth: 350,
                height: 60,
                color: const Color(0xFFE5BF4C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text('Kirish',
                style: TextStyle(color: Colors.white),),
              )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Positioned(
                  child: TextButton(
                child: const Text(
                  'Ro\'xatdan o\'tish',
                  style: TextStyle(color: Color(0xFF341D05)),
                ),
                onPressed: () {
                  Get.toNamed('/user_info_registration');

                },
              )),
            )
          ],
        ),
      ),
    ));
  }
}
