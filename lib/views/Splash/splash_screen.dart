//flutter
import 'package:credit_app/controllers/splashController.dart';
import 'package:credit_app/widget/baseRoute.dart';
import 'package:flutter/material.dart';
//packages
import 'package:get/get.dart';

class SplashScreen extends BaseRoute {
  SplashScreen({a, o}) : super(a: a, o: o, r: 'SplashScreen');

  final SplashController customerController = Get.put(SplashController());

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.cover,
            )),
            //decoration: BoxDecoration(color: Colors.yellow,),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
              ),
            ),
          ]),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Text(
                  "'Giving the People\n a Working Chane'",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
