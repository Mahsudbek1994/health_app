import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const  EdgeInsets.only(top: 160),
        child: Column(
          children: [
         const Text(
              'Kim sifatida ro\'yxatdan o\'tmoqchisiz ?',
              style: TextStyle(
                  color: Color(0xFF4D3C00),
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  height: 1.2),
              textAlign: TextAlign.center,
            ),
           const SizedBox(
              height: 60,
            ),
            MaterialButton(
              onPressed:(){
                Get.toNamed('/user_registration',);
              },
              height: 110,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child:   Text(
                'User',
                style: TextStyle(color: Color(0xFF4D3C00), fontSize: 32.99),
              ),
              color: Color(0xFFFFEFBF),
            ),
           const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  Get.toNamed('/dietolog_registration',);
                },
                child:Text(
                  'Dietolog',
                  style: TextStyle(color: Color(0xFF4D3C00), fontSize: 32.99),
                ),
                height: 110,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Color(0xFFFFEFBF)),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  Get.toNamed('/dietolog_registration',);
                },
                child: Text(
                  'Treyner',
                  style: TextStyle(color: Color(0xFF4D3C00), fontSize: 32.99),
                ),
                height: 110,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Color(0xFFFFEFBF))
          ],
        ),
      ),
    );
  }
}
