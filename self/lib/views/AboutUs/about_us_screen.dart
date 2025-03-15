//flutter
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/baseRoute.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsScreen extends BaseRoute {
  AboutUsScreen({a, o}) : super(a: a, o: o, r: 'AboutUsScreen');

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
          title: Text('About Us'),
          centerTitle: true,
          key: ValueKey('your_key'),
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
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Text(
                            ' SELF Microfinance Fund is a product of Government Project which was known as ‘Small Entrepreneurs Loan Facility (SELF)” formed in 1999. SELF Project was among Government programmes pursuing poverty alleviation role on behalf of the Government which was jointly funded by Government of Tanzania and African Development Bank (AfDB).',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .displayMedium,
                          ),
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
