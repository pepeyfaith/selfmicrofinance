//flutter
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:flutter/material.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class PrivacyPolicyScreen extends BaseRoute {
  PrivacyPolicyScreen({a, o}) : super(a: a, o: o, r: 'PrivacyPolicyScreen');
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
          title: Text('Privacy Policy'),
          centerTitle: true,
          key: null,
        ),
        body: CommonPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'To assist us deliver our products and services, we frequently work with outside companies (delivery partners and financial partners) who are experts in particular fields. To forward your application, we will share your information with the pertinent delivery partner and/or financial partner. Both delivery and financial partners have a responsibility to protect your data. If you borrow from us or may borrow from us through one of our financial partners, we will provide credit reference agencies with information about your personal and/or commercial account, including the names of the parties to the account and how you manage it or them. If you borrow money and fail to pay it back on time and in full, the lending company will be notified, and steps will be taken to track you down and collect the debt, either directly from you or through a contract debt collection agency.',
                          style:
                              Theme.of(context).primaryTextTheme.displayMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
