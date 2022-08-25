import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,

            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 69, left: 76, right: 76),
                    child: Text('Kirish',
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff4D3C00)
                      ),),
                  ),
                  SizedBox(height: 16,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24),
                    child: Text('Akkauntingizga kirish uchun foydalanuvchi nomi va parolni kiriting',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff4D3C00),
                    fontSize: 20,
                      height: 1.5,
                    )),),

                ],
              ),
              SizedBox(height: 106,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text('Foydalanuvchi nomi',
                  style: TextStyle(
                    color: Color(0xff646269),
                    fontSize: 16,

                  ),),
              ),
              SizedBox(height: 4,),
              Container(
                height: 50,
                padding: EdgeInsets.only(right: 24, left: 24, top:4),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)

                    ),
                  ),
                ),
              ),
              SizedBox(height: 38,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text('Kodingizni kiriting',
                  style: TextStyle(
                    color: Color(0xff646269),
                    fontSize: 16,

                  ),),
              ),
              Container(
                padding: EdgeInsets.only(right: 24, left: 24, top:4),
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                ),
              ),
              SizedBox(height: 28,),
              Padding(
                padding: EdgeInsets.only( left: 220),
                child: Text('Parolni unitdingizmi?',
                style:TextStyle(color: Color(0xff55963B),
                fontSize: 16,
                fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 100,),

              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),

                child: MaterialButton(onPressed: (){},
                  height: 50,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png',
                      width: 28,
                      height: 28,),
                      SizedBox(width: 21,),
                      Text('Google account',
                        style: TextStyle(
                            color: Colors.black,
                        ),),
                    ],
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: MaterialButton(onPressed: (){
                  Get.toNamed('/home_page');
                },
                  height: 50,
                  child: Text('Davom etish',
                    style: TextStyle(
                        color: Color(0xffffffff)
                    ),),
                  color: Color(0xffE5BF4C),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],

          ),
        )

    );
  }
}
