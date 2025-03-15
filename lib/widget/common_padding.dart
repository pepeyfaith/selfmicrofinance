//flutter
import 'package:flutter/material.dart';

class CommonPadding extends StatelessWidget {
  final Widget child;
  const CommonPadding({required this.child}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: child,
    );
  }
}
