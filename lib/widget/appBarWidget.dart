import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final double height;
  final bool centerTitle;
  final List<Widget> actions;

  MyCustomAppBar(
    IconButton iconButton, {
    required this.title,
    this.height = kToolbarHeight,
    this.centerTitle = true,
    this.actions = const [],
    required key,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      backgroundColor: Colors.white,
    );
  }
}
