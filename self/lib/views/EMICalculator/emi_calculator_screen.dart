//flutter
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:credit_app/controllers/emi_calculator_controller.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/baseRoute.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class EmiCalculatorScreen extends BaseRoute {
  EmiCalculatorScreen({a, o}) : super(a: a, o: o, r: 'EmiCalculatorScreen');
  final EmiCalculatorController emiCalculatorController =
      Get.find<EmiCalculatorController>();
  // List _tenureTypes = [ 'Month(s)', 'Year(s)' ];
  // String _tenureType = "Year(s)";
  // String _emiResult = "";

  final TextEditingController _loanamount1 = TextEditingController();
  final TextEditingController _interestrate1 = TextEditingController();
  final TextEditingController _duration1 = TextEditingController();
  // currencices
  var _currencies = ['Tzs', 'Dollars', 'Pounds'];

  String result = "";
  String _character = "";
  String currentValue = "";
  String nv = "";
  @override
  void initState() {
    currentValue = _currencies[0];
  }

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
          title: Text('EMI Calculator'),
          centerTitle: true,
          key: null,
        ),
        body: GetBuilder<EmiCalculatorController>(
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
                                'Loan Amount',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomTextFormField(
                                textEditingController: TextEditingController(),
                                hintText: "Enter Loan Amount",
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
                                'Interest Rate (%)',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomTextFormField(
                                textEditingController: TextEditingController(),
                                hintText: "Enterest Rate",
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
                                'Tenure (Months)',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomTextFormField(
                                textEditingController: TextEditingController(),
                                hintText: "Enter duration",
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
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextField(
                                      style: TextStyle(color: Colors.black),
                                      keyboardType: TextInputType.number,
                                      controller: _duration1,
                                      decoration: InputDecoration(
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                          labelText: "Term",
                                          hintText: "Enter number of year",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          )),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 10,
                                ),

                                // dropdown menu
                                // Expanded(
                                //   child: DropdownButton<String>(
                                //     items: _currencies.map((String value) {
                                //       return DropdownMenuItem<String>(
                                //         value: value,
                                //         child: Text(value),
                                //       );
                                //     }).toList(),
                                //     value: currentValue,
                                //     onChanged: (String newValue) {
                                //       _setSelectedValue(newValue);
                                //       this.nv = newValue;
                                //       setState(() {
                                //         this. _currencies = newValue as List<String>;
                                //       });
                                //     },
                                //   ),
                                // ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: RaisedButton(
                                  color: Colors.tealAccent,
                                  textColor: Colors.black,
                                  child: Text(
                                    "CALCULATE",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {
                                    this.result = _getEffectiveAmount(this.nv);
                                    onDialogOpen(context, this.result);
                                  },
                                )),
                                Container(
                                  width: 10,
                                ),
                                Expanded(
                                    child: RaisedButton(
                                  color: Colors.tealAccent,
                                  textColor: Colors.black,
                                  child: Text(
                                    "RESET",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {
                                    _reset();
                                  },
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]))))));
  }

  void _setSelectedValue(String newValue) {
    setState(() {
      this.currentValue = newValue;
    });
  }

  String _getEffectiveAmount(String newValue) {
    String newResult;
    double principal = double.parse(_loanamount1.text);
    double rate = double.parse(_interestrate1.text);
    double term = double.parse(_duration1.text);

    double netpayableAmount = 0;
    if (_character == "simple") {
      netpayableAmount = principal + (principal * rate * term) / 100;
    } else if (_character == "compound") {
      netpayableAmount = principal * pow((1 + (rate / 100)), term);
    }

    if (term == 1) {
      newResult =
          "After $term year, you will have to pay total amount = $netpayableAmount $currentValue";
    } else {
      newResult =
          "After $term year, you will have to pay total amount = $netpayableAmount $currentValue";
    }
    return newResult;
  }

  void _reset() {
    _loanamount1.text = "";
    _interestrate1.text = "";
    _duration1.text = "";
    result = "";
    currentValue = _currencies[0];
  }

  // dialog box

  void onDialogOpen(BuildContext context, String s) {
    var alertDialog = AlertDialog(
      title: Text("NP is selected...."),
      content: Text(s),
      backgroundColor: Colors.green,
      elevation: 8.0,
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(s),
          );
        });
  }

  void setState(Null Function() param0) {}
}

RaisedButton(
    {required MaterialAccentColor color,
    required Color textColor,
    required Text child,
    required Null Function() onPressed}) {}
