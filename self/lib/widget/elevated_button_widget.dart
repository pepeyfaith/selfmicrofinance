//flutter
import 'package:flutter/material.dart';

class ElevatedButtonWIdget extends StatelessWidget {
  final Widget child;
  final VoidCallback voidCallback;
  const ElevatedButtonWIdget(
      {required Key key, required this.child, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: voidCallback, child: child);
  }
}
