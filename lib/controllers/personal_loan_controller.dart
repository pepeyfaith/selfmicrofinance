import 'dart:io';
import 'package:get/get.dart';

class PersonalLoanController extends GetxController {
  RxInt indexValue = 0.obs;

  RxInt gender = 1.obs;
  RxInt maritalStatus = 1.obs;
  Rx<File> photo = File('default_image_path').obs;
  Rx<File> panCard = File('default_image_path').obs;
  Rx<File> aadharCard = File('default_image_path').obs;
  Rx<File> electricityBill = File('default_image_path').obs;
  Rx<File> companyIdCard = File('default_image_path').obs;
  RxList<String> employementTypeList = [
    "Salaried",
    "Self Employed",
    "Homemaker",
    "Unemployed",
    "Student",
    "Retired"
  ].obs;
  RxList workTypeList = [].obs; // Add initial values if needed
  RxList<String> nomineesList = ["Father", "Mother", "Brother", "Sister"].obs;
  RxList companyCategoryList = [].obs; // Add initial values if needed
  late Rx<dynamic> employementVal;
  late Rx<dynamic> companyCategoryVal;
  late RxString nomineeVal = RxString('');
  late Rx<dynamic> workTypeVal;

  @override
  void onInit() async {
    super.onInit();
    employementVal = 0.obs;
  }

  void setIndex(int index) {
    indexValue.value = index;
    update();
  }

  void setGender(int index) {
    gender.value = index;
    update();
  }

  void setMaritalStatus(int index) {
    maritalStatus.value = index;
    update();
  }

  void setPhoto(File file) {
    photo.value = file;
    update();
  }

  void setElectricityBill(File file) {
    electricityBill.value = file;
    update();
  }

  void setCompanyIdCard(File file) {
    companyIdCard.value = file;
    update();
  }

  void setAadharCard(File file) {
    aadharCard.value = file;
    update();
  }

  void setPanCard(File file) {
    panCard.value = file;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
