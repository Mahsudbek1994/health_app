import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app1/views/home/home_controller/home_controller.dart';
import 'package:health_app1/views/home/pages/home_page/home_page.dart';
import 'package:health_app1/views/home/pages/profile_page/profile_page.dart';
import 'package:health_app1/views/home/pages/search_page/search_page.dart';
import 'package:health_app1/views/home/pages/statistic_page/statistic_page.dart';


class Home extends GetView<HomeController> {
  Home({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: ScrollPhysics(
          parent: NeverScrollableScrollPhysics()),
        children: [
          HomePage(),
          StatisticPage(),
          SearchPage(),
          ProfilePage(),
        ],
        controller: controller.pageController,
      ),

      bottomNavigationBar: FancyBottomNavigation(
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
            controller.update();
          },
          initialSelection: controller.currentIndex.value,
          key: controller.bottomNavigationKey,
        ),
      );
  }
}