// ignore_for_file: must_be_immutable
//flutter
import 'package:credit_app/controllers/personal_loan_controller.dart';
import 'package:credit_app/views/bottom_navigation_screen.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_dropdown.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
//controllers
import 'package:credit_app/controllers/splashController.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class MoreBasicDetailEntryPLScreen extends BaseRoute {
  MoreBasicDetailEntryPLScreen({a, o})
      : super(a: a, o: o, r: 'MoreBasicDetailEntryPLScreen');

  void MoreEmployementDetailEntryPLScreen({a, o}) {
    // Implementation for MoreEmployementDetailEntryPLScreen
  }
  void UploadDocumentPLScreen({a, o}) {
    // Implementation for UploadDocumentPLScreen
  }

  final SplashController customerController = Get.put(SplashController());
  PersonalLoanController personalLoanController =
      Get.find<PersonalLoanController>();
  int gender = 1;
  int maritalStatus = 1;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Get.back();
        return Future.value(true);
      },
      child: Scaffold(
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: CommonPadding(
              child: PrimaryTextButton(
                text: 'Next',
                voidCallback: () {
                  if (personalLoanController.employementVal == 'Salaried' ||
                      personalLoanController.employementVal ==
                          'Self Employed') {
                    Get.to(() => MoreEmployementDetailEntryPLScreen(
                          a: a,
                          o: o,
                        ));
                  } else {
                    Get.to(() => UploadDocumentPLScreen(
                          a: a,
                          o: o,
                        ));
                  }
                },
              ),
            ),
          ),
          appBar: MyCustomAppBar(
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 0,
              ),
              onPressed: () {
                // Handle the back button press
                Get.to(() => BottomNavigationScreen(
                      a: a,
                      o: o,
                    ));
              },
            ),
            height: 80,
            title: Text('More Basic Detail'),
            centerTitle: true,
            key: null,
          ),
          body: CommonPadding(
            child: SingleChildScrollView(child:
                GetBuilder<PersonalLoanController>(builder: (controller) {
              return Column(
                children: [
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Alternative Phone Number',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                        'Gender',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: GetBuilder<PersonalLoanController>(
                        builder: (controler) {
                      return Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: personalLoanController.gender,
                                  onChanged: (val) {
                                    personalLoanController
                                        .setGender(val as int);
                                  }),
                              Text(
                                'Male',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .displaySmall,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: personalLoanController.gender,
                                  onChanged: (val) {
                                    personalLoanController
                                        .setGender(val as int);
                                  }),
                              Text('Female',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .displaySmall)
                            ],
                          ),
                        ],
                      );
                    }),
                  ),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Marital Status',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: GetBuilder<PersonalLoanController>(
                          builder: (controller) {
                        return Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue:
                                        personalLoanController.maritalStatus,
                                    onChanged: (val) {
                                      personalLoanController
                                          .setMaritalStatus(val as int);
                                    }),
                                Text(
                                  'Married',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .displaySmall,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue:
                                        personalLoanController.maritalStatus,
                                    onChanged: (val) {
                                      personalLoanController
                                          .setMaritalStatus(val as int);
                                    }),
                                Text('Unmarried',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .displaySmall)
                              ],
                            ),
                          ],
                        );
                      })),
                  personalLoanController.maritalStatus == 1
                      ? Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: DottedBorder(
                            color: Colors.black,
                            strokeWidth: 1,
                            child: Container(
                              padding: EdgeInsets.all(08),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: Text(
                                      'Spouse Detail',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .displayLarge,
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        'Name',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
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
                                      textInputType: TextInputType
                                          .text, // Provide the input type you want
                                      prefixIcon: Icon(Icons
                                          .person), // Provide a prefix icon
                                      suffixIcon: Icon(
                                          Icons.clear), // Provide a suffix icon
                                      maxLength: 100, // Provide a max length
                                      onChanged: (value) {
                                        // Provide the onChanged callback
                                      },
                                      onEditingComplete: () {
                                        // Provide the onEditingComplete callback
                                      },
                                      focusNode:
                                          FocusNode(), // Provide a focus node
                                      readOnly:
                                          false, // Specify if it's read-only
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
                                        'Phone Number',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
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
                                      textInputType: TextInputType
                                          .text, // Provide the input type you want
                                      prefixIcon: Icon(Icons
                                          .person), // Provide a prefix icon
                                      suffixIcon: Icon(
                                          Icons.clear), // Provide a suffix icon
                                      maxLength: 100, // Provide a max length
                                      onChanged: (value) {
                                        // Provide the onChanged callback
                                      },
                                      onEditingComplete: () {
                                        // Provide the onEditingComplete callback
                                      },
                                      focusNode:
                                          FocusNode(), // Provide a focus node
                                      readOnly:
                                          false, // Specify if it's read-only
                                      onTap: () {
                                        // Provide the onTap callback
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Family Name',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                        'Family Phone Number',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                        'Select Nominee',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  // Padding(
                  //     padding: EdgeInsets.only(top: 8),
                  //     child: CustomDropDown(
                  //       hint: Text(
                  //         "Choose here",
                  //         style:
                  //             Theme.of(context).inputDecorationTheme.hintStyle,
                  //       ),
                  //       list: personalLoanController.nomineesList,
                  //       val: personalLoanController.nomineeVal,
                  //       onChanged: (selectedValue) {
                  //         personalLoanController.nomineeVal =
                  //             selectedValue.toString() as RxString;
                  //       },
                  //     )),
                ],
              );
            })),
          )),
    );
  }
}
