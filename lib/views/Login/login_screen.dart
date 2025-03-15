//flutter
import 'package:credit_app/controllers/RegistrationController.dart';
import 'package:credit_app/controllers/loginController.dart';
import 'package:credit_app/views/OtpVerification/otp_verification_screen.dart';
import 'package:credit_app/views/Registration/RegistrationScreen.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class LoginScreen extends BaseRoute {
  LoginScreen({a, o}) : super(a: a, o: o, r: 'LoginScreen');

  final LoginController loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press here
        // Return Future.value(true) to allow back navigation, or Future.value(false) to prevent it.
        return Future.value(true);
      },
      child: Scaffold(
          appBar: MyCustomAppBar(
            Icon(
              Icons.arrow_back_ios,
              size: 0,
            ) as IconButton,
            height: 80,
            title: Text('Sign in'),
            centerTitle: true,
            key: null,
          ),
          body: CommonPadding(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 59),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'with your mobile number',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    // child: Text(
                    //   'Mobile Number',
                    //   style: Theme.of(context).textTheme.bodyText1,
                    // ),
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
                    padding: const EdgeInsets.only(top: 30),
                    child: PrimaryTextButton(
                      text: "Login",
                      voidCallback: () {
                        Get.to(
                            () => OtpVerificationScreen(
                                  a: a,
                                  o: o,
                                ),
                            routeName: "OTP Verification");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: PrimaryTextButton(
                      text: "Register", voidCallback: () {},
                      // voidCallback: () {
                      //   Get.to(
                      //           () => RegistrationController(
                      //         a: a,
                      //         o: o,
                      //       ),
                      //       routeName: "Registration Form");
                      // },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
