import 'package:flutter/material.dart';

// Input TextFormField
class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final int maxLength;
  final void Function(String) onChanged;
  final void Function() onEditingComplete;
  final FocusNode focusNode;
  final bool readOnly;
  final void Function() onTap;

  CustomTextFormField({
    required this.textEditingController,
    required this.hintText,
    required this.obscureText,
    required this.textInputType,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.maxLength,
    required this.onChanged,
    required this.onEditingComplete,
    required this.focusNode,
    required this.readOnly,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly != null ? readOnly : false,
      maxLength: maxLength,
      focusNode: focusNode,
      cursorColor: Colors.black,
      obscureText: obscureText != null ? obscureText : false,
      controller: textEditingController,
      keyboardType: textInputType,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
