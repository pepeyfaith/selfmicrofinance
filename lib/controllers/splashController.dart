//flutter
import 'dart:async';
//packages
import 'package:credit_app/controllers/customer_view.dart';
import 'package:credit_app/controllers/loginController.dart';
import 'package:credit_app/views/Login/login_screen.dart';
import 'package:credit_app/views/introduction/introduction_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    _init();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _init() {
    Timer(Duration(seconds: 8), () {
      Get.off(() => LoginController(), routeName: "CustomerListScreen");
    });
  }
}
