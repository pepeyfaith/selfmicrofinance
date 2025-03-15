// ignore_for_file: must_be_immutable
//flutter
import 'package:credit_app/controllers/other_service_controller.dart';
import 'package:credit_app/views/bottom_navigation_screen.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_dropdown.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:date_format/date_format.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OtherServicesEntryScreen extends BaseRoute {
  OtherServicesEntryScreen({a, o})
      : super(a: a, o: o, r: 'OtherServicesEntryScreen');
  DateTime selectedBirthDate = DateTime.now();
  TextEditingController cBirthDate = new TextEditingController();
  final OtherServicesController otherServicesController =
      Get.find<OtherServicesController>();

  Future _selectBirthdate(context) async {
    try {
      final DateTime? picked = await showDatePicker(
        lastDate: DateTime(2050),
        context: context,
        initialDate:
            selectedBirthDate != null ? selectedBirthDate : DateTime.now(),
        firstDate: DateTime(1940),
      );
      if (picked != null && picked != DateTime(2000)) {
        selectedBirthDate = picked;
        cBirthDate.text =
            formatDate(selectedBirthDate, [yyyy, '-', mm, '-', dd]);
      }
    } catch (e) {
      print('Exception - addCoupon - _selectBirthdate(): ' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyCustomAppBar(
          Icon(
            Icons.arrow_back_ios,
            size: 0,
          ) as IconButton,
          height: 80,
          title: Text('Other services'),
          centerTitle: true,
          key: null,
        ),
        bottomNavigationBar: CommonPadding(
          child: PrimaryTextButton(
            text: 'Submit',
            voidCallback: () {
              Get.to(() => BottomNavigationScreen(
                    a: a,
                    o: o,
                  ));
            },
          ),
        ),
        body: CommonPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Full Name',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Type here",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Birth Date',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Date",
                    obscureText: false,
                    textInputType: TextInputType.datetime,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Identity Card',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Type here",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Phone Number',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Type here",
                    obscureText: false,
                    textInputType: TextInputType.numberWithOptions(),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Email Id',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Type here",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Communication Address',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Type here",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Work Detail',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Employment Type',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: CustomDropDown(
                      hint: Text(
                        "Choose here",
                        style: Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                      list: otherServicesController.employeNatureList,
                      val: otherServicesController.employeNatureVal,
                      onChanged: (selectedValue) {
                        otherServicesController
                            .setEmployeNature(selectedValue.toString());
                      },
                    )),
                Container(
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Your Monthly Income',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextFormField(
                    textEditingController: TextEditingController(),
                    hintText: "Type here",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.clear),
                    maxLength: 50,
                    onChanged: (value) {
                      // Implement your onChanged logic here.
                    },
                    onEditingComplete: () {
                      // Implement your onEditingComplete logic here.
                    },
                    focusNode: FocusNode(),
                    readOnly: false,
                    onTap: () {
                      // Implement your onTap logic here.
                    },
                  ),
                ),
                GetBuilder<OtherServicesController>(builder: (controler) {
                  return otherServicesController.employemenTypeVal == 'Salaried'
                      ? Column(
                          children: [
                            Container(
                              width: Get.width,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Service Type',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: CustomDropDown(
                                  // Add this line
                                  hint: Text(
                                    "Choose here",
                                    style: Theme.of(context)
                                        .inputDecorationTheme
                                        .hintStyle,
                                  ),
                                  list:
                                      otherServicesController.employeNatureList,
                                  val: otherServicesController.employeNatureVal,
                                  onChanged: (selectedValue) {
                                    otherServicesController.setEmployeNature(
                                        selectedValue.toString());
                                  },
                                )),
                            Container(
                              width: Get.width,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Nature of Employment',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: CustomDropDown(
                                  // Add this line
                                  hint: Text(
                                    "Choose here",
                                    style: Theme.of(context)
                                        .inputDecorationTheme
                                        .hintStyle,
                                  ),
                                  list:
                                      otherServicesController.employeNatureList,
                                  val: otherServicesController.employeNatureVal,
                                  onChanged: (selectedValue) {
                                    otherServicesController.setEmployeNature(
                                        selectedValue.toString());
                                  },
                                )),
                          ],
                        )
                      : SizedBox();
                }),
                GetBuilder<OtherServicesController>(builder: (controller) {
                  return otherServicesController.employemenTypeVal ==
                          'Self-employed'
                      ? Column(
                          children: [
                            Container(
                              width: Get.width,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Industry',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomTextFormField(
                                textEditingController: TextEditingController(),
                                hintText: "Type here",
                                obscureText: false,
                                textInputType: TextInputType.text,
                                prefixIcon: Icon(Icons.person),
                                suffixIcon: Icon(Icons.clear),
                                maxLength: 50,
                                onChanged: (value) {
                                  // Implement your onChanged logic here.
                                },
                                onEditingComplete: () {
                                  // Implement your onEditingComplete logic here.
                                },
                                focusNode: FocusNode(),
                                readOnly: false,
                                onTap: () {
                                  // Implement your onTap logic here.
                                },
                              ),
                            ),
                          ],
                        )
                      : SizedBox();
                }),
                GetBuilder<OtherServicesController>(builder: (controller) {
                  return Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: otherServicesController.employemenTypeVal ==
                                'Self-employed' ||
                            otherServicesController.employemenTypeVal ==
                                'Salaried'
                        ? DottedBorder(
                            strokeWidth: 1,
                            color: Colors.black,
                            child: Padding(
                              padding: EdgeInsets.all(08),
                              child: Column(
                                children: [
                                  Container(
                                    width: Get.width,
                                    child: Text('Work Address',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline1),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'Address Line 1',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CustomTextFormField(
                                      textEditingController:
                                          TextEditingController(),
                                      hintText: "Type here",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                      suffixIcon: Icon(Icons.clear),
                                      maxLength: 50,
                                      onChanged: (value) {
                                        // Implement your onChanged logic here.
                                      },
                                      onEditingComplete: () {
                                        // Implement your onEditingComplete logic here.
                                      },
                                      focusNode: FocusNode(),
                                      readOnly: false,
                                      onTap: () {
                                        // Implement your onTap logic here.
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'Address Line 2',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CustomTextFormField(
                                      textEditingController:
                                          TextEditingController(),
                                      hintText: "Type here",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                      suffixIcon: Icon(Icons.clear),
                                      maxLength: 50,
                                      onChanged: (value) {
                                        // Implement your onChanged logic here.
                                      },
                                      onEditingComplete: () {
                                        // Implement your onEditingComplete logic here.
                                      },
                                      focusNode: FocusNode(),
                                      readOnly: false,
                                      onTap: () {
                                        // Implement your onTap logic here.
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'Area',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CustomTextFormField(
                                      textEditingController:
                                          TextEditingController(),
                                      hintText: "Type here",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                      suffixIcon: Icon(Icons.clear),
                                      maxLength: 50,
                                      onChanged: (value) {
                                        // Implement your onChanged logic here.
                                      },
                                      onEditingComplete: () {
                                        // Implement your onEditingComplete logic here.
                                      },
                                      focusNode: FocusNode(),
                                      readOnly: false,
                                      onTap: () {
                                        // Implement your onTap logic here.
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'Pin Code',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CustomTextFormField(
                                      textEditingController:
                                          TextEditingController(),
                                      hintText: "Type here",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                      suffixIcon: Icon(Icons.clear),
                                      maxLength: 50,
                                      onChanged: (value) {
                                        // Implement your onChanged logic here.
                                      },
                                      onEditingComplete: () {
                                        // Implement your onEditingComplete logic here.
                                      },
                                      focusNode: FocusNode(),
                                      readOnly: false,
                                      onTap: () {
                                        // Implement your onTap logic here.
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'City',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CustomTextFormField(
                                      textEditingController:
                                          TextEditingController(),
                                      hintText: "Type here",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                      suffixIcon: Icon(Icons.clear),
                                      maxLength: 50,
                                      onChanged: (value) {
                                        // Implement your onChanged logic here.
                                      },
                                      onEditingComplete: () {
                                        // Implement your onEditingComplete logic here.
                                      },
                                      focusNode: FocusNode(),
                                      readOnly: false,
                                      onTap: () {
                                        // Implement your onTap logic here.
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'State',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CustomTextFormField(
                                      textEditingController:
                                          TextEditingController(),
                                      hintText: "Type here",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                      suffixIcon: Icon(Icons.clear),
                                      maxLength: 50,
                                      onChanged: (value) {
                                        // Implement your onChanged logic here.
                                      },
                                      onEditingComplete: () {
                                        // Implement your onEditingComplete logic here.
                                      },
                                      focusNode: FocusNode(),
                                      readOnly: false,
                                      onTap: () {
                                        // Implement your onTap logic here.
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ))
                        : SizedBox(),
                  );
                })
              ],
            ),
          ),
        ));
  }
}
