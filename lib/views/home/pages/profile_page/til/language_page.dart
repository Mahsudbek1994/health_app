import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/pages/profile_page/profile_page.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String? currentLanguage = 'uz';
  final languages = [
    {
      'title': 'English',
      'key': 'en',
    },
    {
      'title': 'Uzbek',
      'key': 'uz',
    },
    {'title': 'Russian',
      'key': 'ru'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Text('Til',style: TextStyle(
              color: Color(0xff4D3C00),
              fontSize: 32,
              fontWeight: FontWeight.w600
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top:32.0),
            child: Column(

            children: languages.map((e) {

              return GestureDetector(
                onTap: (){
                  setState((){
                    currentLanguage = e['key'];
                  });
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e['title'].toString(),
                    style: TextStyle(
                      color: Color(0xff4D3C00),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      height: 2
                    ),),
                    Container(

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 12,
                            color: e['key'] == currentLanguage
                                ? Colors.yellow
                                : Colors.grey),
                      ),
                    )
                  ],
                ),
              );
            }).toList()),
          ),
          SizedBox(height: 400,),
          Container(
            height: 50,
            width: 342,
            child: MaterialButton(onPressed: (){
              Get.back(result: ProfilePage());
            },
              height: 50,
              child: Text('Saqlash  ',
                style: TextStyle(
                    color: Color(0xffffffff)
                ),),
              color: Color(0xffE5BF4C),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),

        ],
      ),
    ));
  }
}
