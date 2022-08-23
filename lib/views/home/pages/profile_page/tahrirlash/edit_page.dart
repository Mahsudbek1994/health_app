import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/pages/profile_page/profile_page.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        Column(children: [

          Container(
            padding: EdgeInsets.only(top: 28, bottom: 32, left: 76, right: 76),
            child: Text(
              'Tahrirlash',
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0xff4D3C00),
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 28.3),
            child: Text(
              'Familya:',
              style: TextStyle(
                color: Color(0xff646269),
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(right: 24, left: 24, top: 4),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 28.3),
            child: Text(
              'Ism:',
              style: TextStyle(
                color: Color(0xff646269),
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(right: 24, left: 24, top: 4),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 28.3),
            child: Text(
              'Foydalanuvchi nomi:',
              style: TextStyle(
                color: Color(0xff646269),
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(right: 24, left: 24, top: 4),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(height: 38),

          Row(
            children: [
              Column(
                children: [
                  Container(
                    alignment:Alignment.centerLeft,
                    margin: EdgeInsets.only(right: 64),
                    child: Text('Yoshingiz',
                      style: TextStyle(
                        color: Color(0xff646269),
                        fontSize: 16,
                      ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24,),
                    height: 42,
                    width: 186,
                    child: TextField(
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 16,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Text('Vazningiz',
                      style: TextStyle(
                        color: Color(0xff646269),
                        fontSize: 16,
                      ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 24),
                    height: 42,
                    width: 186,
                    child: TextField(
                      decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 38,),
          Container(
            padding: EdgeInsets.only(left: 28.3),
              alignment: Alignment.centerLeft,
              child: Text(
                'Bo\'yingiz:',
                style: TextStyle(
                    color: Color(0xff646269),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(height: 4,),

         Container(
           margin: EdgeInsets.only(right: 208),
            height: 42,
            padding: EdgeInsets.only(left: 24.3),
            // padding: EdgeInsets.only(right: 28.3,),


           child: TextField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
         ),

          SizedBox(
            height: 38,
          ),
          Container(
            height: 50,
            width: 342,
            child: MaterialButton(
              onPressed: () {
                Get.back(result: ProfilePage());
              },
              height: 50,
              child: Text(
                'Saqlash',
                style: TextStyle(color: Color(0xffffffff)),
              ),
              color: Color(0xffE5BF4C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ])
      ]),
    ));
  }

}
