

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../controllers/dietolog_controller.dart';

class DietologImagePicker extends StatelessWidget {

  DietologController dietologController = Get.find();

  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

   DietologImagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [
         Obx(() =>  CircleAvatar(

           backgroundColor: Color(0xFFFFEFBF),
              backgroundImage: dietologController.isProficPicPathSet.value == true?
              FileImage(File(dietologController.profilePicPath.value))as
              ImageProvider : AssetImage('assets/images/man.png',),
              radius: 80,
            ),),

          Positioned(
              bottom: 0,
              child: InkWell(
                child: Icon(Icons.camera,
                size: 40,),
                onTap: (){
                  print('Camera  clicked');
                  showModalBottomSheet(context:context, builder: (context)=>bottomSheet(context));},
              )
          ),
        ],

    );
  }

  Widget  bottomSheet( BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Text('Choose Profile Picture',
          style: TextStyle(
            color: Color(0xff4D3C00),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image,
                    color: Color(0xff4D3C00),),
                    SizedBox(height: 5,),
                    Text('Gallery',style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff4D3C00)
                    ),)
                  ],
                ),
                onTap: (){
                  takePhoto(ImageSource.gallery);
                },
              ),
              SizedBox(width: 80,),
              InkWell(
                child: Column(
                  children: [
                    Icon(Icons.camera,
                    color: Color(0xff4D3C00),),

                SizedBox(height: 5,),
                Text('Camera',style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 20,
                color: Color(0xff4D3C00)))],
                ),
                onTap: (){
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
    await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    dietologController.setProfileImagePath(pickedFile!.path);

    Get.back();


  }
}
