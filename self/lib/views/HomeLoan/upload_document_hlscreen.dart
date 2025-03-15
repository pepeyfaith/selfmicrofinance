// ignore_for_file: must_be_immutable
//flutter
import 'package:credit_app/controllers/home_loan_controller.dart';
import 'package:credit_app/controllers/imageController.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/imageWidget.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class UploadDocumentHLScreen extends BaseRoute {
  void SanctionedDisbursalScreen({a, o}) {
    // Implementation for UploadDocumentPLScreen
  }

  UploadDocumentHLScreen({a, o})
      : super(a: a, o: o, r: 'UploadDocumentHLScreen');
  ImageControlller imageController = Get.find<ImageControlller>();

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
                    style: Theme.of(context).primaryTextTheme.headlineSmall,
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
                        // imageFile = await imageController
                        //     .imageService(ImageSource.gallery);
                        // if (imageName == 'PAN Card') {
                        //   homeLoanController.setPanCard(imageFile);
                        // } else if (imageName == 'Aadhar Card') {
                        //   homeLoanController.setAadharCard(imageFile);
                        // } else if (imageName == 'Photographs') {
                        //   homeLoanController.setPhotographs(imageFile);
                        // }

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
                        // imageFile = await imageController
                        //     .imageService(ImageSource.camera);
                        // if (imageName == 'PAN Card') {
                        //   homeLoanController.setPanCard(imageFile);
                        // } else if (imageName == 'Aadhar Card') {
                        //   homeLoanController.setAadharCard(imageFile);
                        // } else if (imageName == 'Photographs') {
                        //   homeLoanController.setPhotographs(imageFile);
                        // }
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
        title: Text(''),
        centerTitle: true,
        key: null,
      ),
      body: CommonPadding(
        child: SingleChildScrollView(
            child: GetBuilder<HomeLoanController>(builder: (controller) {
          return Column(
            children: [
              // employement type is salaries then this
              Column(
                children: [
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'PAN Card',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                        'National Card',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            // imagePickerSheet('Aadhar Card', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
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
                        'Photographs',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            imagePickerSheet('Photographs', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.photographs,
                              name: 'Photographs',
                            ),
                          ),
                        ),
                      )),
                  GetBuilder<HomeLoanController>(builder: (controller) {
                    return homeLoanController.employemenTypeVal == 'Salaried'
                        ? Column(
                            children: [
                              Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Employment Documents',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                                        // imagePickerSheet('Photographs', context);
                                      },
                                      child: Container(
                                        width: Get.width,
                                        height: 250,
                                        child: ImageWidget(
                                          key: UniqueKey(),
                                          file: homeLoanController.aadharCard,
                                          name: 'Employment Documents',
                                        ),
                                      ),
                                    ),
                                  )),
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
                                    'Company Documents',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                                        // imagePickerSheet('Photographs', context);
                                      },
                                      child: Container(
                                        width: Get.width,
                                        height: 250,
                                        child: ImageWidget(
                                          key: UniqueKey(),
                                          file: homeLoanController.aadharCard,
                                          name: 'Company Documents',
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        : SizedBox();
                  }),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Property Documents',
                        style: Theme.of(context).primaryTextTheme.displayLarge,
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Site Plan',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            // imagePickerSheet('Photographs', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'Site Plan',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'property deed',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            // imagePickerSheet('Photographs', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'property deed',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Buyer Agreement',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            // imagePickerSheet('Photographs', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'Buyer Agreement',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Chain Documents',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            // imagePickerSheet('Photographs', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'Chain Documents',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Documents for existing property',
                        style: Theme.of(context).textTheme.bodyLarge,
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
                            // imagePickerSheet('Photographs', context);
                          },
                          child: Container(
                            width: Get.width,
                            height: 250,
                            child: ImageWidget(
                              key: UniqueKey(),
                              file: homeLoanController.aadharCard,
                              name: 'Documents for existing property',
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
