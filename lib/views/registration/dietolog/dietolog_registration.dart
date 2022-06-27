import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/home.dart';
import 'package:health_app1/views/registration/dietolog/pickers/month_picker.dart';
import 'package:health_app1/views/registration/dietolog/pickers/degree_picker.dart';
import 'package:health_app1/views/registration/dietolog/pickers/phone_picker.dart';
import 'package:health_app1/views/registration/dietolog/pickers/work_picker.dart';
import '../../../controllers/dietolog_controller.dart';
import 'pickers/date_pick.dart';
import 'dietolog_image_picker.dart';

class DietologRegistrationPage extends StatelessWidget {
  DietologRegistrationPage({Key? key}) : super(key: key);

  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;
  DegreePicker degreePicker = Get.put(DegreePicker());
  PhonePicker phonePicker = Get.put(const PhonePicker());
  WorkPicker workPicker = Get.put(WorkPicker());
  HomePage homePage = Get.put(HomePage());

  DatePick datePick = Get.put(DatePick());
  MonthPicker monthPicker = Get.put(MonthPicker());
  DietologController dietologController = Get.put(DietologController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
            const  Padding(
                  padding: EdgeInsets.only(top: 76, left: 150, right: 150),
                  child: Text(
                    'Kirish',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4D3C00)),
                  )),
            const  SizedBox(
                height: 40,
              ),
              DietologImagePicker(),
            const  SizedBox(
                height: 40,
              ),
            const  Padding(
                padding:  EdgeInsets.only(right: 276),
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
                padding:const EdgeInsets.only(right: 24, left: 24, top: 4),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xff4D3C00))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xff4D3C00))),
                    border: OutlineInputBorder(
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color(0xff4D3C00),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 38),
             const Padding(
                padding: EdgeInsets.only(right: 305),
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
                padding:const EdgeInsets.only(right: 24, left: 24, top: 4),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder:const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4D3C00))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4D3C00))),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff4D3C00),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 38),
             const Padding(
                padding:  EdgeInsets.only(right: 276),
                child: Text(
                  'Jinsingiz',
                  style: TextStyle(
                    color: Color(0xff646269),
                    fontSize: 16,
                  ),
                ),
              ),
             const  SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                width: 350,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      contentPadding:const EdgeInsets.all(8),
                      focusedBorder:const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4D3C00))),
                      enabledBorder:const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff4D3C00))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  isExpanded: true,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  iconSize: 30,
                  borderRadius: BorderRadius.circular(15),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
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
                      return 'Please select gender.';
                    }
                  },
                  onChanged: (value) {
                    //Do something when changing the item if you want.
                  },
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                ),
              ),
             const SizedBox(
                height: 38,
              ),
             const Padding(
                  padding: EdgeInsets.only(right: 165),
                  child: Text('Tug\'ilgan sanangizni kiriting:')),
           const   SizedBox(
                height: 4,
              ),
              Row(children: [
                Container(
                    padding: EdgeInsets.only(left: 24),
                    width: 135,
                    height: 50,
                    child: MonthPicker()),
               const SizedBox(
                  width: 8,
                ),
                Container(
                    padding: EdgeInsets.only(left: 24),
                    width: 102,
                    height: 50,
                    child: DatePick()),
              ]),
           const   SizedBox(height: 38,),

              Row(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text('Darajangiz'),
                    ),
                SizedBox(height: 4,),

                Container(
                    padding: EdgeInsets.only(left: 24, top: 4),
                    width: 210,
                    height: 50,
                    child: DegreePicker())]),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Text('Tajribangiz necha yil'),
                    ),
                    SizedBox(height: 4,),
                    Container(
                        padding: EdgeInsets.only(right: 24,top:4),
                        width: 164,
                        height: 50,
                        child: WorkPicker()),
                  ],
                ),
              ]),
             const SizedBox(height: 38,),
             const PhonePicker(),
             const SizedBox(height: 38,),
            const  Padding(
                padding:  EdgeInsets.only(right: 215.0),
                child: Text('Yashash manzilingiz'),
              ),
             const SizedBox(height: 4,),
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 24, right: 24, top: 4),
                child: const TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                    )
                  ),
                ),
              ),
              SizedBox(height: 38,),

              Container(
                height: 116,
                padding: EdgeInsets.only(left: 24, right: 24,),
                  child: TextField(
                    maxLines: 4,

                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                        )
                    ),
                  ),
                ),
              SizedBox(height: 24,),
              Container(
                height: 50,
                width: 342,
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
              SizedBox(height: 38 ,)
            ],
          )),
    );
  }
}
