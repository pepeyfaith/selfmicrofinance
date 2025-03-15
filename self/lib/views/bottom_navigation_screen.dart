//flutter
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:credit_app/controllers/bottom_nav_controller.dart';
import 'package:credit_app/views/Home/home_screen.dart';
import 'package:credit_app/views/Home/home_screen2.dart';
import 'package:credit_app/views/LoanApplications/loan_application_screen.dart';
import 'package:credit_app/views/Profile/profile_screen.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//packages
import 'package:get/get.dart';

class BottomNavigationScreen extends BaseRoute {
  BottomNavigationScreen({a, o, phone_number})
      : super(a: a, o: o, r: 'BottomNavigationScreen');
  final BottomNavController bottomNavController =
      Get.find<BottomNavController>();

  List<Widget> screens() => [
        bottomNavController.home2Activated
            ? HomeScreen2(
                a: a,
                o: o,
              )
            : HomeScreen(
                a: a,
                o: o,
              ),
        LoanApplicationScreen(
          a: a,
          o: o,
        ),
        ProfileScreen(
          a: a,
          o: o,
        )
      ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press here
        // Return Future.value(true) to allow back navigation, or Future.value(false) to prevent it.
        return Future.value(true);
      },
      child: Scaffold(
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Colors.white,
            activeColor: Theme.of(context).primaryColor,
            items: [
              TabItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Icon(
                      Icons.home,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    size: 27,
                    color: Colors.white,
                  )),
              TabItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Icon(
                    FontAwesomeIcons.fileAlt,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
                activeIcon: Icon(
                  FontAwesomeIcons.fileAlt,
                  size: 27,
                  color: Colors.white,
                ),
              ),
              TabItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Icon(Icons.person, size: 25, color: Colors.grey),
                ),
                activeIcon: Icon(
                  Icons.person,
                  size: 27,
                  color: Colors.white,
                ),
              ),
            ],
            height: 50,
            top: -20.0,
            elevation: 1,
            initialActiveIndex: bottomNavController.currentIndex,
            onTap: (int i) {
              bottomNavController.setCurrentIndex(i);
            },
          ),
          body: GetBuilder<BottomNavController>(builder: (controller) {
            return screens().elementAt(bottomNavController.currentIndex);
          })),
    );
  }
}
