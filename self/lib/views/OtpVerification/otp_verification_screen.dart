//flutter
import 'package:credit_app/controllers/otp_verification_controller.dart';
import 'package:credit_app/views/bottom_navigation_screen.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpVerificationScreen extends BaseRoute {
  OtpVerificationScreen({a, o, phone_number})
      : super(a: a, o: o, r: 'OtpVerificationScreen');

  final OtpVerificationController otpVerificationController =
      Get.find<OtpVerificationController>();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      shape: BoxShape.rectangle,
      color: Color(0xffF4F5F7),
      borderRadius: BorderRadius.circular(15),
    );
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
          title: Text('Phone Verification'),
          centerTitle: true,
          key: null,
        ),
        body: CommonPadding(
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
                        'OTP Verification',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'An authentication code has been sent to',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Text(
                      '+255656065737',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: GetBuilder<OtpVerificationController>(
                      builder: (controller) {
                    return PinPut(
                      onChanged: (value) => {},
                      fieldsAlignment: MainAxisAlignment.spaceBetween,
                      eachFieldConstraints:
                          BoxConstraints(maxWidth: 55, maxHeight: 55),
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      inputDecoration: InputDecoration(
                        counterStyle:
                            Theme.of(context).primaryTextTheme.titleLarge,
                        //  fillColor: Color(0xffF4F5F7),
                        border: InputBorder.none,
                        counterText: '',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        filled: false,
                      ),
                      autofocus: false,
                      fieldsCount: 4,
                      onTap: () {},
                      controller: otpVerificationController.pinPutController,
                      submittedFieldDecoration: _pinPutDecoration.copyWith(
                          shape: BoxShape.rectangle,
                          color: Theme.of(context).primaryColor),
                      selectedFieldDecoration: _pinPutDecoration,
                      followingFieldDecoration: _pinPutDecoration.copyWith(
                          color: otpVerificationController.checkcontroller()
                              ? Theme.of(context).primaryColor
                              : Color(0xFFF4F5F7),
                          shape: BoxShape.rectangle),
                    );
                  })),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "I didn't receive the code. ",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Resend Code",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: PrimaryTextButton(
                  text: "Verify Now",
                  voidCallback: () {
                    Get.to(
                        () => BottomNavigationScreen(
                              a: a,
                              o: o,
                            ),
                        routeName: "Home");
                  },
                ),
              )
            ],
          ),
        ));
  }
}
