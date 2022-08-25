import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Purpose extends StatelessWidget {
  const Purpose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const  EdgeInsets.only(top: 160),
        child: Column(
          children: [
            const Text(
              'Maqsadingizni tanlag',
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
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: MaterialButton(
                onPressed:(){
                  Get.toNamed('/user_registration',);
                },
                height: 110,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child:   Text(
                  'Dieta',
                  style: TextStyle(color: Color(0xFF4D3C00), fontSize: 32.99),
                ),
                color: Color(0xFFFFEFBF),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  Get.toNamed('/dietolog_registration',);
                },
                child:Text(
                  'Sport',
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
                  'Dieta va Sport',
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
