import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:health_app1/views/home/pages/profile_page/tahrirlash/edit_page.dart';
import 'package:health_app1/views/home/pages/profile_page/til/language_page.dart';
import 'package:health_app1/views/home/pages/profile_page/yordam/help_page.dart';
import 'package:share/share.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);
   EditPage editPage = Get.put(EditPage());
   HelpPage helpPage = Get.put(HelpPage());
   // LanguagePage languagePage = Get.put(LanguagePage());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 55, left: 24),
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 65,
                  backgroundImage: AssetImage('assets/images/man.png'),
                ),
              ),
           const SizedBox(
                width: 16,
              ),
              Container(
                  padding:const EdgeInsets.only(top: 55),
                  child: const Text(
                    'Elmir Safiyev',
                    style: TextStyle(
                      color: Color(0xff4D3C00),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ))
            ],
          ),
         const SizedBox(
            height: 55,
          ),
          ListTile(
            onTap: (){
              Get.to(EditPage());
            },
            iconColor:const Color(0xffC6973D),
            title:const Text(
              'Tahrirlash',
              style: TextStyle(
                  color: Color(0xff4D3C00),
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
            ),
            leading: GestureDetector(
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:const Color(
                        0xffEAE2C9), //                   <--- border color
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const Icon(
                  Icons.edit_location_alt_outlined,
                  size: 28,
                ),
              ),

            ),
            trailing:const Icon(Icons.chevron_right,color: Color(0xff4C3C00),),),
          Container(
            height: 16,
            padding: const EdgeInsets.only(left: 24, right: 24),
            child:const Divider(),
          ),
          ListTile(
            onTap: (){
              Get.to(LanguagePage());
            },
            iconColor: const Color(0xffC6973D),
            title: const Text(
              'Til',
              style: TextStyle(
                  color: Color(0xff4D3C00),
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
            ),
            leading: GestureDetector(
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0xffEAE2C9), //                   <--- border color
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const  Icon(
                  Icons.language_outlined,
                  size: 28,
                ),
              ),
              //
            ),
            trailing: const Icon(Icons.chevron_right,color: Color(0xff4C3C00),),),
          Container(
            height: 6,
            padding: const EdgeInsets.only(left: 24, right: 24),
            child:const  Divider(),
          ),
          ListTile(
            iconColor: const Color(0xffC6973D),
            title: const Text(
              'Bildirishnoma',
              style: TextStyle(
                  color: Color(0xff4D3C00),
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
            ),
            leading: GestureDetector(
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0xffEAE2C9), //                   <--- border color
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  size: 28,
                ),
              ),
              //
            ),
            trailing:const  Icon(Icons.chevron_right,color: Color(0xff4C3C00),),),
          Container(
            height: 16,
            padding: const EdgeInsets.only(left: 24, right: 24),
            child:const Divider(),
          ),
          ListTile(
            iconColor: const Color(0xffC6973D),
            title:const Text(
              'Ulashish',
              style: TextStyle(
                  color: Color(0xff4D3C00),
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
            ),
            leading: GestureDetector(
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:const Color(
                        0xffEAE2C9), //                   <--- border color
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const Icon(
                  Icons.share_outlined,
                  size: 28,
                ),
              ),
              //
            ),
            trailing:const Icon(Icons.chevron_right,color: Color(0xff4C3C00),),
          ),
          Container(
            height: 16,
            padding: const EdgeInsets.only(left: 24, right: 24),
            child:const Divider(
              color: Color(0xffEEEEEE),
            ),
          ),
          ListTile(
            onTap: (){
              Get.to(HelpPage());
            },
              iconColor: const Color(0xffC6973D),
              title:const Text(
                'Yordam',
                style: TextStyle(
                    color: Color(0xff4D3C00),
                    fontSize: 20,
                    fontStyle: FontStyle.normal),
              ),
              leading: GestureDetector(
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:const Color(
                          0xffEAE2C9), //                   <--- border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:const Icon(
                    Icons.help_outline,
                    size: 28,
                  ),
                ),
                //
              ),
                trailing:const Icon(Icons.chevron_right,color: Color(0xff4C3C00),),),
        ],
      ),
    );
  }
}
