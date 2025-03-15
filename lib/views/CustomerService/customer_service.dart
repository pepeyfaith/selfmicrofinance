//flutter
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:flutter/material.dart';
//controllers
import 'package:credit_app/controllers/splashController.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomerServiceScreen extends BaseRoute {
  CustomerServiceScreen({a, o}) : super(a: a, o: o, r: 'CustomerServiceScreen');

  final SplashController customerController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyCustomAppBar(
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text('Customer Service'),
          centerTitle: true,
          key: null,
        ),
        body: CommonPadding(
          child: Padding(
            padding: EdgeInsets.only(top: Get.height / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.faceAgent,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Customer Service',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'For any queries or concerns,feel free to reach out to us',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Call us - +255 22 221 188',
                      style: Theme.of(context).textTheme.headline5),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Mail us - info@self.go.tz',
                      style: Theme.of(context).textTheme.headline5),
                )
              ],
            ),
          ),
        ));
  }
}
