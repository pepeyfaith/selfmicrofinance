// ignore_for_file: must_be_immutable
//flutter
import 'dart:io';

import 'package:credit_app/controllers/personal_loan_controller.dart';
import 'package:credit_app/views/PersonalLoan/more_basic_detail_entry_plscreen.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_dropdown.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/imageWidget.dart';
import 'package:credit_app/widget/next_and_back_button.dart';
import 'package:date_format/date_format.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
//controllers
import 'package:credit_app/controllers/splashController.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//packages
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';

class BasicDetailEntryPLScreen extends BaseRoute {
  BasicDetailEntryPLScreen({a, o})
      : super(a: a, o: o, r: 'BasicDetailEntryPLScreen');

  final SplashController customerController = Get.put(SplashController());
  final PersonalLoanController personalLoanController =
      Get.find<PersonalLoanController>();

  final _pageController = PageController();
  late DateTime _selectedBirthdate;
  final _currentPageNotifier = ValueNotifier<int>(0);
  TextEditingController cBirthdate = new TextEditingController();

  List<String> titles = [
    'Group Members Detail',
    'Members Detail',
    'Loan Amount'
  ];
  imagePickerSheet(String imageName, context) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File selectedImage = File(pickedFile.path);

      switch (imageName) {
        case 'Photo':
          personalLoanController.setPhoto(selectedImage);
          break;
        // Add other cases for different images if needed
        case 'ElectricityBill':
          personalLoanController.setElectricityBill(selectedImage);
          break;
        case 'CompanyIdCard':
          personalLoanController.setCompanyIdCard(selectedImage);
          break;
        case 'AadharCard':
          personalLoanController.setAadharCard(selectedImage);
          break;
        case 'PanCard':
          personalLoanController.setPanCard(selectedImage);
          break;
      }
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    Future _selectBirthdate() async {
      try {
        final DateTime? picked = await showDatePicker(
          lastDate: DateTime(2050),
          context: context,
          initialDate:
              _selectedBirthdate != null ? _selectedBirthdate : DateTime.now(),
          firstDate: DateTime(1940),
        );
        if (picked != null && picked != DateTime(2000)) {
          _selectedBirthdate = picked;
          cBirthdate.text =
              formatDate(_selectedBirthdate, [yyyy, '-', mm, '-', dd]);
        }
      } catch (e) {
        print('Exception - addCoupon - _selectBirthdate(): ' + e.toString());
      }
    }

    final _items = [
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Group name',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: CustomTextFormField(
                textEditingController:
                    TextEditingController(), // Provide a controller
                hintText: "Type here",
                obscureText: false,
                textInputType:
                    TextInputType.text, // Provide the input type you want
                prefixIcon: Icon(Icons.person), // Provide a prefix icon
                suffixIcon: Icon(Icons.clear), // Provide a suffix icon
                maxLength: 100, // Provide a max length
                onChanged: (value) {
                  // Provide the onChanged callback
                },
                onEditingComplete: () {
                  // Provide the onEditingComplete callback
                },
                focusNode: FocusNode(), // Provide a focus node
                readOnly: false, // Specify if it's read-only
                onTap: () {
                  // Provide the onTap callback
                },
              ),
            ),
            Container(
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Group number',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: CustomTextFormField(
                textEditingController:
                    TextEditingController(), // Provide a controller
                hintText: "Type here",
                obscureText: false,
                textInputType:
                    TextInputType.text, // Provide the input type you want
                prefixIcon: Icon(Icons.person), // Provide a prefix icon
                suffixIcon: Icon(Icons.clear), // Provide a suffix icon
                maxLength: 100, // Provide a max length
                onChanged: (value) {
                  // Provide the onChanged callback
                },
                onEditingComplete: () {
                  // Provide the onEditingComplete callback
                },
                focusNode: FocusNode(), // Provide a focus node
                readOnly: false, // Specify if it's read-only
                onTap: () {
                  // Provide the onTap callback
                },
              ),
            ),
            Container(
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Registration Date',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: CustomTextFormField(
                textEditingController:
                    TextEditingController(), // Provide a controller
                hintText: "Select Date",
                obscureText: false,
                textInputType:
                    TextInputType.text, // Provide the input type you want
                prefixIcon: Icon(Icons.person), // Provide a prefix icon
                suffixIcon: Icon(Icons.clear), // Provide a suffix icon
                maxLength: 100, // Provide a max length
                onChanged: (value) {
                  // Provide the onChanged callback
                },
                onEditingComplete: () {
                  // Provide the onEditingComplete callback
                },
                focusNode: FocusNode(), // Provide a focus node
                readOnly: false, // Specify if it's read-only
                onTap: () {
                  _selectBirthdate();
                  // Provide the onTap callback
                },
              ),
            ),
          ],
        ),
      ),
      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         width: Get.width,
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 15),
      //           child: Text(
      //             'Employment Type',
      //             style: Theme.of(context).textTheme.bodyText1,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(top: 8),
      //         child: CustomDropDown(
      //           hint: Text(
      //             "Choose here",
      //             style: Theme.of(context).inputDecorationTheme.hintStyle,
      //           ),
      //           list: personalLoanController.employementTypeList,
      //           val: personalLoanController
      //               .employementVal.value, // Ensure val is a valid value
      //           onChanged: (selectedValue) {
      //             personalLoanController.employementVal =
      //                 selectedValue.toString() as Rx;
      //           },
      //         ),
      //       ),
      //       Container(
      //         width: Get.width,
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 15),
      //           child: Text(
      //             'Full name',
      //             style: Theme.of(context).textTheme.bodyText1,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(top: 8),
      //         child: CustomTextFormField(
      //           textEditingController:
      //               TextEditingController(), // Provide a controller
      //           hintText: "Type here",
      //           obscureText: false,
      //           textInputType:
      //               TextInputType.text, // Provide the input type you want
      //           prefixIcon: Icon(Icons.person), // Provide a prefix icon
      //           suffixIcon: Icon(Icons.clear), // Provide a suffix icon
      //           maxLength: 100, // Provide a max length
      //           onChanged: (value) {
      //             // Provide the onChanged callback
      //           },
      //           onEditingComplete: () {
      //             // Provide the onEditingComplete callback
      //           },
      //           focusNode: FocusNode(), // Provide a focus node
      //           readOnly: false, // Specify if it's read-only
      //           onTap: () {
      //             // Provide the onTap callback
      //           },
      //         ),
      //       ),
      //       Container(
      //         width: Get.width,
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 15),
      //           child: Text(
      //             'Date of Birth',
      //             style: Theme.of(context).textTheme.bodyText1,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(top: 8),
      //         child: CustomTextFormField(
      //           textEditingController:
      //               TextEditingController(), // Provide a controller
      //           hintText: "Type here",
      //           obscureText: false,
      //           textInputType:
      //               TextInputType.text, // Provide the input type you want
      //           prefixIcon: Icon(Icons.person), // Provide a prefix icon
      //           suffixIcon: Icon(Icons.clear), // Provide a suffix icon
      //           maxLength: 100, // Provide a max length
      //           onChanged: (value) {
      //             // Provide the onChanged callback
      //           },
      //           onEditingComplete: () {
      //             // Provide the onEditingComplete callback
      //           },
      //           focusNode: FocusNode(), // Provide a focus node
      //           readOnly: false, // Specify if it's read-only
      //           onTap: () {
      //             // Provide the onTap callback
      //           },
      //         ),
      //       ),
      //       Container(
      //         width: Get.width,
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 15),
      //           child: Text(
      //             'Member Photo',
      //             style: Theme.of(context).textTheme.bodyText1,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //           padding: EdgeInsets.only(top: 8),
      //           child: DottedBorder(
      //             strokeWidth: 1,
      //             color: Theme.of(context).primaryColor,
      //             child: GestureDetector(
      //               onTap: () {
      //                 imagePickerSheet('Photo', context);
      //               },
      //               child: Container(
      //                 width: Get.width,
      //                 height: 250,
      //                 child: ImageWidget(
      //                   key: UniqueKey(),
      //                   file: personalLoanController.photo.value,
      //                   name: 'Photo',
      //                 ),
      //               ),
      //             ),
      //           )),
      //     ],
      //   ),
      // ),
      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         width: Get.width,
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 15),
      //           child: Text(
      //             'Loan amount required',
      //             style: Theme.of(context).textTheme.bodyText1,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(top: 8),
      //         child: CustomTextFormField(
      //           textEditingController:
      //               TextEditingController(), // Provide a controller
      //           hintText: "Type here",
      //           obscureText: false,
      //           textInputType:
      //               TextInputType.text, // Provide the input type you want
      //           prefixIcon: Icon(Icons.person), // Provide a prefix icon
      //           suffixIcon: Icon(Icons.clear), // Provide a suffix icon
      //           maxLength: 100, // Provide a max length
      //           onChanged: (value) {
      //             // Provide the onChanged callback
      //           },
      //           onEditingComplete: () {
      //             // Provide the onEditingComplete callback
      //           },
      //           focusNode: FocusNode(), // Provide a focus node
      //           readOnly: false, // Specify if it's read-only
      //           onTap: () {
      //             // Provide the onTap callback
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    ];
    _buildPageView() {
      return Container(
        height: Get.height - 220,
        width: Get.width,
        child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: _items.length,
            controller: _pageController,
            itemBuilder: (BuildContext context, int index) {
              return _items[index];
            },
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
              personalLoanController.setIndex(_currentPageNotifier.value);
            }),
      );
    }

    _buildLinearProgressIndicator() {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            LinearProgressPageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
          progressColor: Theme.of(context).primaryColor,
          width: Get.width - 30,
          height: 5,
        ),
      );
    }

    return Scaffold(
      appBar: MyCustomAppBar(
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 0,
          ),
          onPressed: () {
            // Handle the back button press
            Get.back();
          },
        ),
        height: 80,
        title: Text('Group Loan Registration'),
        centerTitle: true,
        key: null,
      ),
      body: GetBuilder<PersonalLoanController>(builder: (controller) {
        return CommonPadding(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: Get.width,
                  height: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${titles[personalLoanController.indexValue.value]}',
                        style: Theme.of(context).primaryTextTheme.headline3,
                      ),
                      Container(
                          width: Get.width,
                          margin: EdgeInsets.only(top: 3, right: 10),
                          child: _buildLinearProgressIndicator())
                    ],
                  ),
                ),
                _buildPageView()
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: NextBackButton(
          key: UniqueKey(),
          backFunction: () {
            if (_currentPageNotifier.value != 0) {
              _currentPageNotifier.value--;
              _pageController.animateToPage(_currentPageNotifier.value,
                  curve: Curves.ease, duration: Duration(milliseconds: 300));
              personalLoanController.setIndex(_currentPageNotifier.value);
            } else {
              Get.back();
            }
          },
          nextFunction: () {
            if (_currentPageNotifier.value != _items.length - 1) {
              _currentPageNotifier.value++;
              _pageController.animateToPage(_currentPageNotifier.value,
                  curve: Curves.ease, duration: Duration(microseconds: 300));
              personalLoanController.setIndex(_currentPageNotifier.value);
            } else {
              Get.to(() => MoreBasicDetailEntryPLScreen(
                    a: a,
                    o: o,
                  ));
            }
          },
          text: '',
        ),
      ),
    );
  }
}
