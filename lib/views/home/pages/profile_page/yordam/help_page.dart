import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          const  Padding(
              padding: const EdgeInsets.only(left: 76, right: 76, top: 28, bottom: 32),
              child: Text('Yordam',
              style: TextStyle(
                color: Color(0xff4D3C00),
                fontWeight: FontWeight.w500,
                fontSize: 32,
              )),
            ),
            const  ListTile(
              horizontalTitleGap: 24,

              leading: Icon(Icons.email_outlined,
              size: 40,
              color: Color(0xffC6973D),),

              title: Text('Elektron pochta:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff646269),
              ),),
              subtitle: Text('helathuz@gmail.com',
              style: TextStyle(
                color: Color(0xff4D3C00),
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
            ),
            Container(
              height: 16,
              padding: const EdgeInsets.only(left: 24, right: 24),
              child:const Divider(
                color: Color(0xffEEEEEE),
              ),
            ),
            const ListTile(
              horizontalTitleGap: 24,

              leading: Icon(Icons.phone_outlined,
                size: 40,
                color: Color(0xffC6973D),),

              title: Text('Telfon:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff646269),
                ),),
              subtitle: Text('+998994444347',
                style: TextStyle(
                    color: Color(0xff4D3C00),
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),),
            ),
            Container(
              height: 16,
              padding: const EdgeInsets.only(left: 24, right: 24),
              child:const Divider(
                color: Color(0xffEEEEEE),
              ),
            ),
            const   ListTile(
              horizontalTitleGap: 24,

              leading: Icon(Icons.location_on_outlined,
                size: 40,
                color: Color(0xffC6973D),),

              title: Text('Manzil:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff646269),
                ),),
              subtitle: Text('Andijon sh,Boburshox 2',
                style: TextStyle(
                    color: Color(0xff4D3C00),
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),),
            ),
          ],
        ),
      )
    );
  }
}
