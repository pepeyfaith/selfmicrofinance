// //models
// import 'dart:core';

// import 'package:credit_app/controllers/RegistrationController.dart';
// import 'package:credit_app/views/Login/login_screen.dart';
// import 'package:credit_app/widget/baseRoute.dart';
// import 'package:flutter/material.dart';
// import 'package:credit_app/widget/appBarWidget.dart';
// import 'package:credit_app/widget/common_padding.dart';
// import 'package:credit_app/widget/custom_textformfield.dart';
// import 'package:credit_app/widget/primary_button.dart';
// //packages
// import 'package:get/get.dart';

// class RegistrationScreen extends BaseRoute {
//   RegistrationScreen({a, o}) : super(a: a, o: o, r: 'RegistrationScreen');

//   final RegistrationController registrationController =
//       Get.put(RegistrationController());

//   bool hide = true;
//   bool hide1 = true;
//   bool error, sending, success;
//   String msg;

//   var mobileNumber = TextEditingController();
//   var fullname = TextEditingController();
//   var mail = TextEditingController();
//   var refferalcode = TextEditingController();

//   String phpurl = "http://sccult.greenrevo.co.tz/insert.php";
//   //
//   // @override
//   // void initState() {
//   //   error = false;
//   //   sending = false;
//   //   success = false;
//   //   msg = "";
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () {
//         return Future.value(true);
//       },
//       child: Scaffold(
//           appBar: MyCustomAppBar(
//             IconButton(
//               icon: Icon(
//                 Icons.arrow_back_ios,
//                 size: 0,
//               ),
//               onPressed: () {},
//             ),
//             height: 80,
//             title: Text('More Basic Detail'),
//             centerTitle: true,
//             key: null,
//           ),
//           body: CommonPadding(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 59),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.center,
//                           child: Text(
//                             'REGISTRATION',
//                             style: Theme.of(context).textTheme.headline4,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 30),
//                     // child: Text(
//                     //   'Mobile Number',
//                     //   style: Theme.of(context).textTheme.bodyText1,
//                     // ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8),
//                     child: CustomTextFormField(
//                       textEditingController:
//                           TextEditingController(), // Provide a controller
//                       hintText: "Enter full name",
//                       obscureText: false,
//                       textInputType:
//                           TextInputType.text, // Provide the input type you want
//                       prefixIcon: Icon(Icons.person), // Provide a prefix icon
//                       suffixIcon: Icon(Icons.clear), // Provide a suffix icon
//                       maxLength: 100, // Provide a max length
//                       onChanged: (value) {
//                         // Provide the onChanged callback
//                       },
//                       onEditingComplete: () {
//                         // Provide the onEditingComplete callback
//                       },
//                       focusNode: FocusNode(), // Provide a focus node
//                       readOnly: false, // Specify if it's read-only
//                       onTap: () {
//                         // Provide the onTap callback
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8),
//                     child: CustomTextFormField(
//                       textEditingController:
//                           TextEditingController(), // Provide a controller
//                       hintText: "ENter your email",
//                       obscureText: false,
//                       textInputType:
//                           TextInputType.text, // Provide the input type you want
//                       prefixIcon: Icon(Icons.person), // Provide a prefix icon
//                       suffixIcon: Icon(Icons.clear), // Provide a suffix icon
//                       maxLength: 100, // Provide a max length
//                       onChanged: (value) {
//                         // Provide the onChanged callback
//                       },
//                       onEditingComplete: () {
//                         // Provide the onEditingComplete callback
//                       },
//                       focusNode: FocusNode(), // Provide a focus node
//                       readOnly: false, // Specify if it's read-only
//                       onTap: () {
//                         // Provide the onTap callback
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8),
//                     child: CustomTextFormField(
//                       textEditingController:
//                           TextEditingController(), // Provide a controller
//                       hintText: "Enter your phone number",
//                       obscureText: false,
//                       textInputType:
//                           TextInputType.text, // Provide the input type you want
//                       prefixIcon: Icon(Icons.person), // Provide a prefix icon
//                       suffixIcon: Icon(Icons.clear), // Provide a suffix icon
//                       maxLength: 100, // Provide a max length
//                       onChanged: (value) {
//                         // Provide the onChanged callback
//                       },
//                       onEditingComplete: () {
//                         // Provide the onEditingComplete callback
//                       },
//                       focusNode: FocusNode(), // Provide a focus node
//                       readOnly: false, // Specify if it's read-only
//                       onTap: () {
//                         // Provide the onTap callback
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8),
//                     child: CustomTextFormField(
//                       textEditingController:
//                           TextEditingController(), // Provide a controller
//                       hintText: "Enter Password",
//                       obscureText: false,
//                       textInputType:
//                           TextInputType.text, // Provide the input type you want
//                       prefixIcon: Icon(Icons.person), // Provide a prefix icon
//                       suffixIcon: Icon(Icons.clear), // Provide a suffix icon
//                       maxLength: 100, // Provide a max length
//                       onChanged: (value) {
//                         // Provide the onChanged callback
//                       },
//                       onEditingComplete: () {
//                         // Provide the onEditingComplete callback
//                       },
//                       focusNode: FocusNode(), // Provide a focus node
//                       readOnly: false, // Specify if it's read-only
//                       onTap: () {
//                         // Provide the onTap callback
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: PrimaryTextButton(
//                       text: "Register",
//                       voidCallback: () {
//                         Get.to(
//                             () => LoginScreen(
//                                   a: a,
//                                   o: o,
//                                 ),
//                             routeName: "Login Screen");
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }
