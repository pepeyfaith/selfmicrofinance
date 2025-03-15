//flutter
import 'package:flutter/material.dart';

class ShadowButton extends StatelessWidget {
  final String text;
  final VoidCallback voidCallback;
  const ShadowButton(
      {required Key key, required this.text, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white.withOpacity(0.5),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )),
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          onPressed: voidCallback,
          child: Text('$text')),
    );
  }
}
