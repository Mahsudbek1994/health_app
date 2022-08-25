import 'package:flutter/material.dart';

class WorkPicker extends StatelessWidget {
  WorkPicker({Key? key}) : super(key: key);
  final List<String> workPicker = [
    '0','1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11',
    '12','13','14','15','16','17','18','18','19','20','21','22','23','24',
    '25','26','27','28','29','30',

  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        //Add isDense true and zero Padding.
        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          isDense: true,
          contentPadding: EdgeInsets.all(8),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0xff4D3C00)
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0xff4D3C00)
              )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
      isExpanded: true,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,

      borderRadius: BorderRadius.circular(15),
      items: workPicker
          .map((item) =>
          DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select.';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: (value) {
        selectedValue = value.toString();
      },
    );
  }
}
