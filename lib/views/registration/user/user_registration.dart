import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/registration/user/user_info_registration.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

          child: Column(

        children: [
          Center(
            heightFactor: 12,
            child: Text('Sizning jinsingiz?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Color(0xff4D3C00),
              fontSize: 24,

            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              GestureDetector(
                onTap: () =>Get.toNamed( '/user_info'),
                child: Container(
                  child: SvgPicture.asset('assets/images/erkak.svg',
                  height: 119,
                  width: 92,),
                ),
              ),
              SizedBox(width: 18),
              GestureDetector(
                onTap: () => Get.toNamed(('/user_info')),
                child: Container(
                  child: SvgPicture.asset('assets/images/ayol.svg',
                    height: 119,
                    width: 92,),

                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
