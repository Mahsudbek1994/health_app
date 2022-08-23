import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
            SizedBox(height: 24,),
            Container(
              height: 50,
            padding: EdgeInsets.only(left: 24, right: 24),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF5F5F6)),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: Icon(
                    Icons.search_sharp,
                    size: 40,
                  ),
                  suffixIconColor: Color(0xffB2AFB8),
                  hintText: 'Qidiruv',
                  hintStyle: TextStyle(
                      color: Color(0xffB2AFB8),
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.3),
                child: Text('Dietolog',
                style: TextStyle(
                  color: Color(0xff4D3C00),
                  fontWeight: FontWeight.w600,
                  fontSize: 24
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(onPressed: (){}, child: Text('Barchasi > ',
                style: TextStyle(color: Color(0xff4D3C00),
                fontSize: 20,
                fontWeight: FontWeight.w400),)),
              )

            ],
          )
        ],
      )),
    );
  }
}
