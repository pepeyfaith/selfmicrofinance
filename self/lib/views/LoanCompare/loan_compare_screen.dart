// ignore_for_file: must_be_immutable
//flutter
import 'package:credit_app/controllers/loan_compare_controller.dart';
import 'package:credit_app/widget/baseRoute.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_dropdown.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:credit_app/utils/global.dart' as global;
//models
//packages
import 'package:get/get.dart';

class LoanCompareScreen extends BaseRoute {
  ScrollController scrollController = new ScrollController();
  LoanCompareScreen({a, o}) : super(a: a, o: o, r: 'LoanCompareScreen');

  final LoanCompareController loanCompareController =
      Get.find<LoanCompareController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 0,
          ),
          onPressed: () {},
        ),
        height: 80,
        title: Text('Loan Compare'),
        centerTitle: true,
        key: null,
      ),
      body: GetBuilder<LoanCompareController>(
        builder: (_) => (CommonPadding(
          child: Container(
            height: Get.height,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Loan Type',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: CustomDropDown(
                            hint: Text(
                              "select loan type",
                              style: Theme.of(context)
                                  .inputDecorationTheme
                                  .hintStyle,
                            ),
                            list: loanCompareController.loanTypes,
                            val: loanCompareController.loanTypeVal,
                            onChanged: (selectedValue) {
                              loanCompareController.loanTypeVal =
                                  selectedValue.toString();
                            },
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Loan Amount',
                          style: Theme.of(context).textTheme.bodyLarge,
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
                          prefixIcon:
                              Icon(Icons.person), // Provide a prefix icon
                          suffixIcon:
                              Icon(Icons.clear), // Provide a suffix icon
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
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Tenure (Months)',
                          style: Theme.of(context).textTheme.bodyLarge,
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
                          prefixIcon:
                              Icon(Icons.person), // Provide a prefix icon
                          suffixIcon:
                              Icon(Icons.clear), // Provide a suffix icon
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
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: PrimaryTextButton(
                          text: "Calculate",
                          voidCallback: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: comissiontable(context))
              ],
            ),
          ),
        )),
      ),
    );
  }

  Widget comissiontable(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingTextStyle: Theme.of(context).textTheme.headlineSmall,
          dividerThickness: 2,
          horizontalMargin: 15,
          columnSpacing: 15,
          // ignore: deprecated_member_use
          dataRowHeight: 50,
          dataTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
          columns: [
            DataColumn(
                label: Text(
              'Bank',
              textAlign: TextAlign.center,
            )),
            DataColumn(
                label: Text(
              'EMI',
              textAlign: TextAlign.center,
            )),
            DataColumn(
                label: Text(
              'Rate(%)',
              textAlign: TextAlign.center,
            )),
            DataColumn(
                label: Text(
              'Interest Amount',
              textAlign: TextAlign.center,
            )),
            DataColumn(
                label: Text(
              'Net Payable Amount',
              textAlign: TextAlign.center,
            )),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text(
                'NMB',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '${global.currencySymbol}8,570',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '5.2',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '${global.currencySymbol}2839',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '${global.currencySymbol}102839',
                textAlign: TextAlign.center,
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                'CRDB',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '${global.currencySymbol}8,570',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '5.2',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '${global.currencySymbol}2839',
                textAlign: TextAlign.center,
              )),
              DataCell(Text(
                '${global.currencySymbol}102839',
                textAlign: TextAlign.center,
              )),
            ]),
          ],
        ),
      ),
      Positioned(
          left: Get.width / 1.3,
          top: 0,
          bottom: -5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.1),
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                scrollController.animateTo(
                    MediaQuery.of(context).size.width * 0.5,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.decelerate);
              },
              icon: Icon(Icons.keyboard_arrow_right),
            ),
          )),
      Positioned(
          right: Get.width / 1.3,
          top: 0,
          bottom: -5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.1),
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                scrollController.animateTo(0,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.decelerate);
              },
              icon: Icon(Icons.keyboard_arrow_left),
            ),
          ))
    ]);
  }
}
