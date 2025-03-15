import 'package:flutter/material.dart';
//controllers
import 'package:credit_app/controllers/splashController.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class ConfirmationDialog extends StatefulWidget {
  final String title;
  final String subTitle;
  final VoidCallback onConfirm;

  ConfirmationDialog({
    Key? key, // Add the key parameter with curly braces here
    required this.title,
    required this.subTitle,
    required this.onConfirm,
  }) : super(key: key);

  @override
  _ConfirmationDialogState createState() => _ConfirmationDialogState();
}

class _ConfirmationDialogState extends State<ConfirmationDialog> {
  final SplashController customerController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Text(widget.subTitle),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 40, right: 40),
            ),
            backgroundColor: MaterialStateProperty.all(
              Color(0xFFFE2121).withOpacity(0.1),
            ),
            shadowColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.red),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'No',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 40, right: 40),
            ),
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            shadowColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          onPressed: widget.onConfirm,
          child: Text(
            'Yes',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
