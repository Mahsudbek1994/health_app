import 'package:flutter/material.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Center
              (
              child: Text('Text is sign_up page'),
            )
        ),
      ),
    );
  }
}
