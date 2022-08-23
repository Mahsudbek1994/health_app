import 'package:health_app1/controllers/dietolog_controller.dart';

class DietologController{
  String name;
  String stars;
  String url;

  DietologController(this.name, this.stars, this.url);
  static  List<DietologController> generateDietologs(){
    return[
      DietologController('Alimova Madina','Andijan','assets/devonaboy.jpg'),
      DietologController('Elyor Shodmonov','Buxoro','assets/buxoro.jpg'),
      DietologController('Guli Alimova','Samarqand','assets/buxoro1.jpg'),
      DietologController('Sanobar Azizova','Xiva','assets/xiva.jpg'),
      DietologController('Ali Qosimov','Amirsoy','assets/amirsoy.jpg'),
      DietologController('G\'ani Ohilov','Qo\'qon','assets/xiva1.jpg')
    ];
  }
  static  List<DietologController> generateTreyners(){
    return[
      DietologController('Nuri','assets/images/','assets/sirdaryo.jpg'),
      DietologController('Toshkent','Toshkent','assets/toshkent.jpg'),
      DietologController('Chorvoq','Chorvoq','assets/chorvoq.jpg'),
      DietologController('Amirsoy','Amirsoy','assets/amirsoy.jpg'),
      DietologController('Xorazm','Xorazm','assets/madrasa.jpg'),
      DietologController('Buxoro','Buxoro','assets/buxoro1.jpg'),
      DietologController('Samarqand','Samarqand','assets/buxoro.jpg')

    ];
  }

}