import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:160),
        child: Column(
          children: [
            Text(
              'Kim sifatida ro\'yxatdan o\'tmoqchisiz ?',
              style: TextStyle(
                color: Color(0xFF4D3C00),
                  fontWeight: FontWeight.bold, fontSize: 28, height: 1.2),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            MaterialButton(
              onPressed: () {},
              height: 110,
              minWidth: 340,
              child: Text('User',
              style: TextStyle(
                color: Color(0xFF4D3C00),
                  fontSize: 32.99
              ),),
                color: Color(0xFFFFEFBF),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(onPressed: () {}, child: Text('Dietolog',
              style: TextStyle(color: Color(0xFF4D3C00),
              fontSize: 32.99),
            ),
              height: 110,
              minWidth: 340,
                color: Color(0xFFFFEFBF)),
            SizedBox(
              height: 20,
            ),
            MaterialButton(onPressed: () {}, child: Text('Treyner',
              style: TextStyle(color: Color(0xFF4D3C00),
                  fontSize: 32.99),
            ),
                height: 110,
                minWidth: 340,
            color: Color(0xFFFFEFBF))
          ],
        ),
      ),
    );
  }
}
