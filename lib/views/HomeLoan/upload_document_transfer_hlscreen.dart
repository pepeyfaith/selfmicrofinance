//flutter
// ignore_for_file: must_be_immutable

import 'package:credit_app/controllers/home_loan_controller.dart';
import 'package:credit_app/controllers/imageController.dart';
import 'package:credit_app/controllers/personal_loan_controller.dart';
import 'package:credit_app/views/SanctionedDisbursal/sanctioned_disbursal_sreen.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/imageWidget.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class UploadDocumentTransferHLScreen extends BaseRoute {
  UploadDocumentTransferHLScreen({a, o})
      : super(a: a, o: o, r: 'UploadDocumentTransferHLScreen');

  void SanctionedDisbursalScreen({a, o}) {
    // Implementation for UploadDocumentPLScreen
  }
  ImageControlller imageController = Get.find<ImageControlller>();

  final PersonalLoanController personalLoanController =
      Get.put(PersonalLoanController());
  final HomeLoanController homeLoanController = Get.find<HomeLoanController>();

  imagePickerSheet(String imageName, context) {
    return Get.bottomSheet(
        Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            height: 180,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  // color:Colors.red,
                  child: Text(
                    'Select Image',
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.image,
                        size: 25,
                      ),
                      title: Text('Gallery'),
                      onTap: () async {
                        Get.back();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.camera, size: 25),
                      title: Text('Camera'),
                      onTap: () async {
                        Get.back();
                      },
                    ),
                  ),
                ),
              ],
            )),
        backgroundColor: Colors.transparent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CommonPadding(
        child: PrimaryTextButton(
          text: 'Next',
          voidCallback: () {
            Get.to(() => SanctionedDisbursalScreen(
                  a: a,
                  o: o,
                ));
          },
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
            Get.back();
          },
        ),
        height: 80,
        title: Text('Upload Document'),
        centerTitle: true,
        key: null,
      ),
      body: CommonPadding(
        child: SingleChildScrollView(
            child: GetBuilder<PersonalLoanController>(builder: (controller) {
          return Column(
            children: [
              Column(
                children: [
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Personal Information',
                        style: Theme.of(context).primaryTextTheme.headline1,
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Father Name',
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
                        'Mother Name',
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
                  GetBuilder<HomeLoanController>(builder: (controller) {
                    return homeLoanController.employemenTypeVal == 'Salaried'
                        ? Column(
                            children: [
                              Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Employer Detail',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline1,
                                  ),
                                ),
                              ),
                              Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Name',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
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
                                  prefixIcon: Icon(
                                      Icons.person), // Provide a prefix icon
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
                                    'Phone Number',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
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
                                  prefixIcon: Icon(
                                      Icons.person), // Provide a prefix icon
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
                                  readOnly: false, // Specify if it's read-only
                                  onTap: () {
                                    // Provide the onTap callback
                                  },
                                ),
                              ),
                            ],
                          )
                        : SizedBox();
                  }),
                  GetBuilder<HomeLoanController>(builder: (controller) {
                    return homeLoanController.employemenTypeVal ==
                            'Self-employed'
                        ? Column(
                            children: [
                              Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Company Detail',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline1,
                                  ),
                                ),
                              ),
                              Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Company Name',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
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
                                  prefixIcon: Icon(
                                      Icons.person), // Provide a prefix icon
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
                                  readOnly: false, // Specify if it's read-only
                                  onTap: () {
                                    // Provide the onTap callback
                                  },
                                ),
                              ),
                            ],
                          )
                        : SizedBox();
                  }),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'PAN Card',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {
                            imagePickerSheet('PAN Card', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.panCard,
                              name: 'PAN Card',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'National  Card',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {
                            imagePickerSheet('NID Card', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'NID Card',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Bank Statement',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.panCard,
                              name: 'Bank Statement',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'ITR returns',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              file: homeLoanController.panCard,
                              key: UniqueKey(),
                              name: 'ITR returns', //Income Tax Return
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Property Documents',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              file: homeLoanController.panCard,
                              key: UniqueKey(),
                              name: 'Property Documents',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Lod', //Letter of Demand (of Payment)
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              file: homeLoanController.aadharCard,
                              key: UniqueKey(),
                              name: 'Lod',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Existing loan documents',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DottedBorder(
                        strokeWidth: 1,
                        color: Theme.of(context).primaryColor,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'Existing loan documents',
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          );
        })),
      ),
    );
  }
}
