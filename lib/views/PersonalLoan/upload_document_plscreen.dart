//flutter
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

class UploadDocumentPLScreen extends BaseRoute {
  UploadDocumentPLScreen({a, o})
      : super(a: a, o: o, r: 'UploadDocumentPLScreen');
  final ImageControlller imageController = Get.find<ImageControlller>();

  final PersonalLoanController personalLoanController =
      Get.put(PersonalLoanController());
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
                  key: UniqueKey(),
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
        title: Text('Upload Documents'),
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
                        'Photo/Selfie',
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
                            imagePickerSheet('Photo', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: personalLoanController.photo.value,
                              name: 'Photo',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Identity card',
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
                            imagePickerSheet('Identity card', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: personalLoanController.panCard.value,
                              name: 'Identity card',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'National Identity Card',
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
                            imagePickerSheet('Identity Card', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: personalLoanController.aadharCard.value,
                              name: 'Identity Card',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Company Name',
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
                        'Office Address',
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
                        'Last 6 month bank statement',
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
                              file: personalLoanController.photo.value,
                              name: 'Bank statement',
                            ),
                          ),
                        ),
                      )),
                  // Container(
                  //   width: Get.width,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(top: 15),
                  //     child: Text(
                  //       'Electricity Bill',
                  //       style: Theme.of(context).textTheme.bodyText1,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //     padding: EdgeInsets.only(top: 8),
                  //     child: DottedBorder(
                  //       strokeWidth: 1,
                  //       color: Theme.of(context).primaryColor,
                  //       child: GestureDetector(
                  //         onTap: () {
                  //           imagePickerSheet('Electricity Bill', context);
                  //         },
                  //         child: Container(
                  //           width: Get.width,
                  //           height: 250,
                  //           child: ImageWidget(
                  //             file: personalLoanController.electricityBill,
                  //             name: 'Electricity Bill',
                  //           ),
                  //         ),
                  //       ),
                  //     )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Company Contract Document',
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
                            imagePickerSheet(
                                'Company Contract Document', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: personalLoanController.companyIdCard.value,
                              name: 'Company Contract Document',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        '3 month salary slip',
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
                              file: personalLoanController.photo.value,
                              name: '3 month salary slip',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Official Email Id',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 1,
                        child: Container(
                          padding: EdgeInsets.all(08),
                          child: Column(
                            children: [
                              Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: Text(
                                    '2 References',
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
                                    'First Reference Name',
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
                                    'First Reference Phone Number',
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
                                    'Second Reference Name',
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
                                    'Second Reference Phone Number',
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
                          ),
                        )),
                  ),
                ],
              ),
            ],
          );
        })),
      ),
    );
  }
}
