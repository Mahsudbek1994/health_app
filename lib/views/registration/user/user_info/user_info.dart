import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/registration/user/purpose_page/purpose.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:[ Column(
            children: [
              Container(
          alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 100),
                  child: Text('Ma\'lumotlarni to\'ldiring',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4C3C00),
                    fontSize: 24,
                  ),),
                ),

              SizedBox(height: 100,),
              Container(

                height: 50,
                width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '00 (years)',
                    hintStyle: TextStyle(fontSize: 20.0, color: Color(0xffC5C3CA)),
                      contentPadding: EdgeInsets.only(left: 60, right: 60),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                ),
              ),
              SizedBox(height: 52,),
              Container(

                height: 50,
                width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '00 (sm)',
                    hintStyle: TextStyle(fontSize: 20.0, color: Color(0xffC5C3CA)),
                    contentPadding: EdgeInsets.only(left: 60, right: 60),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                ),
              ),
              SizedBox(height: 52,),
              Container(

                height: 50,
                width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '00 (kg)',
                    hintStyle: TextStyle(fontSize: 20.0, color: Color(0xffC5C3CA)),
                    contentPadding: EdgeInsets.only(left: 60, right: 60),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                ),
              ),
              SizedBox(height: 138,),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: MaterialButton(onPressed: (){
                  Get.to(Purpose());
                },
                  height: 60,
                  minWidth: 176,
                  child: Text('Davom etish',
                    style: TextStyle(
                        color: Color(0xffffffff)
                    ),),
                  color: Color(0xffE5BF4C),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
         ]
        ),
      ),
    );
  }
}
