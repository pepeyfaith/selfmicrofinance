import 'package:credit_app/controllers/cibili_score_controller.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/baseRoute.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckCIBILScoreScreen extends BaseRoute {
  CheckCIBILScoreScreen({a, o}) : super(a: a, o: o, r: 'CheckCIBILScoreScreen');
  final CIBILScoreController cibilScoreController =
      Get.find<CIBILScoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        height: 80,
        title: Text('CIB Score'),
        centerTitle: true,
        key: null,
      ),
      body: GetBuilder<CIBILScoreController>(
        builder: (_) => (CommonPadding(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'PAN Card No',
                          style: Theme.of(context).textTheme.bodyLarge,
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
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Mobile No',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: CustomTextFormField(
                          textEditingController: TextEditingController(),
                          hintText: "ENTER YOU PHONE NUMBER",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 15),
                        child: PrimaryTextButton(
                          text: "Check",
                          voidCallback: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
