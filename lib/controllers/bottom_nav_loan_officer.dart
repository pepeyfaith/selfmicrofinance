//flutter
import 'package:get/get.dart';
//views

class BottomLoanController extends GetxController {
  int currentIndex = 0.obs();
  bool home1Activated = true.obs();
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setHome2() {
    home1Activated = true;
    update();
  }

  void setHome() {
    home1Activated = false;
    update();
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}
