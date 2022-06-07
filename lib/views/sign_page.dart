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
              Color.fromRGBO(231, 188, 152, 1.0),
              Color.fromRGBO(246, 228, 194, 1),
            ])),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 46),
                child: Text(
                  'E-health',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
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
                child: const Text('Kirish'),
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
                  Get.toNamed('/registration_page');
                },
              )),
            )
          ],
        ),
      ),
    ));
  }
}
