import 'package:flutter/material.dart';

class UserInfoRegistration extends StatelessWidget {
  const UserInfoRegistration({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.only(top: 116, left: 76, right: 76),
                      child: Text('Ro\'yxatdan o\'tish',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xff4D3C00)
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text('Isminigiz:',
                  style: TextStyle(
                    color: Color(0xff646269),
                    fontSize: 16,

                  ),),
                ),
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
                  child: Text('Familyangiz:',
                    style: TextStyle(
                      color: Color(0xff646269),
                      fontSize: 16,

                    ),),
                ),
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
                  child: Text('Foydalanuvchi nomi:',
                    style: TextStyle(
                      color: Color(0xff646269),
                      fontSize: 16,

                    ),),
                ),
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
                  child: Text('Kod yarating:',
                    style: TextStyle(
                      color: Color(0xff646269),
                      fontSize: 16,

                    ),),
                ),
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
                  child: Text('Kodni takrorlang:',
                    style: TextStyle(
                      color: Color(0xff646269),
                      fontSize: 16,

                    ),),
                ),
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
                SizedBox(height: 160,),

                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: MaterialButton(onPressed: (){},
                    height: 60,
                    child: Text('Davom etish',
                    style: TextStyle(
                      color: Color(0xffffffff)
                    ),),
                    color: Color(0xffE5BF4C),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 54,
                )
              ],
            ),
          )

    );
  }
}
