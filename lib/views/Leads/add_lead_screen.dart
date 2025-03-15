// import 'package:credit_app/controllers/lean_controller.dart';
// import 'package:credit_app/widget/appBarWidget.dart';
// import 'package:credit_app/widget/baseRoute.dart';
// import 'package:credit_app/widget/common_padding.dart';
// import 'package:credit_app/widget/custom_dropdown.dart';
// import 'package:credit_app/widget/custom_textformfield.dart';
// import 'package:credit_app/widget/primary_button.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';

// class AddLeadScreen extends BaseRoute {
//   //a - analytics
//   //o - observer
//   AddLeadScreen({a, o}) : super(a: a, o: o, r: 'AddLeadScreen');
//   final LeadsController leadsController = Get.find<LeadsController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyCustomAppBar(
//         IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//           ),
//         ),
//         height: 80,
//         title: Text('Add Lead'),
//         centerTitle: true,
//       ),
//       body: GetBuilder<LeadsController>(
//           builder: (_) => (CommonPadding(
//                   child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(bottom: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Name',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               textEditingController: TextEditingController(),
//                         hintText: "Type here",
//                         obscureText: false,
//                         textInputType: TextInputType.text,
//                         prefixIcon: Icon(Icons.person),
//                         suffixIcon: Icon(Icons.clear),
//                         maxLength: 50,
//                         onChanged: (value) {
//                           // Implement your onChanged logic here.
//                         },
//                         onEditingComplete: () {
//                           // Implement your onEditingComplete logic here.
//                         },
//                         focusNode: FocusNode(),
//                         readOnly: false,
//                         onTap: () {
//                           // Implement your onTap logic here.
//                         },
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Phone No',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               textEditingController: TextEditingController(),
//                         hintText: "Type here",
//                         obscureText: false,
//                         textInputType: TextInputType.text,
//                         prefixIcon: Icon(Icons.person),
//                         suffixIcon: Icon(Icons.clear),
//                         maxLength: 50,
//                         onChanged: (value) {
//                           // Implement your onChanged logic here.
//                         },
//                         onEditingComplete: () {
//                           // Implement your onEditingComplete logic here.
//                         },
//                         focusNode: FocusNode(),
//                         readOnly: false,
//                         onTap: () {
//                           // Implement your onTap logic here.
//                         },
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Email Id',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               textEditingController: TextEditingController(),
//                         hintText: "Type here",
//                         obscureText: false,
//                         textInputType: TextInputType.text,
//                         prefixIcon: Icon(Icons.person),
//                         suffixIcon: Icon(Icons.clear),
//                         maxLength: 50,
//                         onChanged: (value) {
//                           // Implement your onChanged logic here.
//                         },
//                         onEditingComplete: () {
//                           // Implement your onEditingComplete logic here.
//                         },
//                         focusNode: FocusNode(),
//                         readOnly: false,
//                         onTap: () {
//                           // Implement your onTap logic here.
//                         },
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Employment Type',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                               padding: EdgeInsets.only(top: 8),
//                               child: CustomDropDown(
//                                 hint: Text(
//                                   "select employment",
//                                   style: Theme.of(context)
//                                       .inputDecorationTheme
//                                       .hintStyle,
//                                 ),
//                                 list: leadsController.employmenttypelist,
//                                 val: leadsController.employmenttypeVal,
//                                 onChanged: (selectedValue) {
//                                   leadsController.employmenttypeVal =
//                                       selectedValue.toString();
//                                 },
//                               )),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Loan Type',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                               padding: EdgeInsets.only(top: 8),
//                               child: CustomDropDown(
//                                 hint: Text(
//                                   "select loan type",
//                                   style: Theme.of(context)
//                                       .inputDecorationTheme
//                                       .hintStyle,
//                                 ),
//                                 list: leadsController.loantypelist,
//                                 val: leadsController.loantypelistVal,
//                                 onChanged: (selectedValue) {
//                                   leadsController.loantypelistVal =
//                                       selectedValue.toString();
//                                 },
//                               )),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Loan Amount',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               prefixIcon: Icon(
//                                 FontAwesomeIcons.rupeeSign,
//                                 size: 15,
//                                 color: Theme.of(context).primaryColor,
//                               ),
//                               hintText: "Enter loan amount",
//                               textEditingController: leadsController.loanamount,
//                               focusnode: leadsController.floanamount,
//                               obscureText: false,
//                               key: key,
//                               textInputType: TextInputType.numberWithOptions(
//                                   signed: true, decimal: true),
//                               onEditingComplete: () {
//                                 FocusScope.of(context).requestFocus(
//                                   leadsController.faadharno,
//                                 );
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Aadhar Card No',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               hintText: "Enter you aadhar no",
//                               textEditingController: leadsController.aadharno,
//                               focusnode: leadsController.faadharno,
//                               obscureText: false,
//                               key: key,
//                               textInputType: TextInputType.numberWithOptions(
//                                   signed: true, decimal: true),
//                               onEditingComplete: () {
//                                 FocusScope.of(context).requestFocus(
//                                   leadsController.fpanno,
//                                 );
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'PAN Card No',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               hintText: "Enter you pan no",
//                               textEditingController: leadsController.panno,
//                               focusnode: leadsController.fpanno,
//                               obscureText: false,
//                               key: key,
//                               textInputType: TextInputType.text,
//                               onEditingComplete: () {
//                                 FocusScope.of(context).requestFocus(
//                                   leadsController.flocation,
//                                 );
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 15),
//                             child: Text(
//                               'Location',
//                               style: Theme.of(context).textTheme.bodyText1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 8),
//                             child: CustomTextFormField(
//                               hintText: "Enter you location no",
//                               textEditingController: leadsController.location,
//                               focusnode: leadsController.flocation,
//                               obscureText: false,
//                               key: key,
//                               textInputType: TextInputType.text,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               )))),
//       bottomNavigationBar: CommonPadding(
//         child: PrimaryTextButton(
//           text: "Submit",
//           voidCallback: () {
//             Get.back();
//           },
//         ),
//       ),
//     );
//   }
// }
