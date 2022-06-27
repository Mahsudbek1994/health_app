import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/home_controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
      child: PageView(
        physics: ScrollPhysics(
          parent: NeverScrollableScrollPhysics()),
        children: [
          Container(
            child: Center(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Wishlist',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Cart',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
        controller: controller.pageController,
      ),
      ),
      bottomNavigationBar: Obx(
            () => FancyBottomNavigation(
              textColor: Color(0xff4D3C00),
              circleColor: Color(0xFFE5BF4C),
              inactiveIconColor:Color(0xff4D3C00),
              activeIconColor: Color(0xffffffff),
          tabs: [
            TabData(
              iconData: Icons.home,

              title: 'Home',
            ),
            TabData(
              iconData: Icons.bar_chart,
              title: 'Statistic',
            ),
            TabData(
              iconData: Icons.search,
              title: 'Search',
            ),
            TabData(
              iconData: Icons.account_box,
              title: 'Profile',
            ),
          ],
          onTabChangedListener: (position) {
            controller.currentIndex.value = position;
            controller.pageController.jumpToPage(position);
          },
          initialSelection: controller.currentIndex.value,
          key: controller.bottomNavigationKey,
        ),
      ),
    );
  }
}