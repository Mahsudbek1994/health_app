import 'package:flutter/material.dart';

class PhonePicker extends StatefulWidget {
  const PhonePicker({Key? key}) : super(key: key);

  @override
  State<PhonePicker> createState() => _PhonePickerState();
}

class _PhonePickerState extends State<PhonePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
         const Padding(
            padding:  EdgeInsets.only(right: 225),
            child: Text('Telefon raqamingiz'),
          ),
         const SizedBox(height: 4,),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 24, right: 24, top: 4),
            child: const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  )
              ),
            ),
          ),
        ],
      );
  }
}
