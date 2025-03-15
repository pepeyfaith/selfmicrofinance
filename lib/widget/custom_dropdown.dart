//flutter
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final Widget hint;
  final List<dynamic> list;
  final void Function(dynamic?) onChanged;
  final dynamic type;
  final dynamic val;

  const CustomDropDown({
    this.type,
    required this.onChanged,
    required this.hint,
    this.val,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: TextStyle(color: Colors.red),
      items: list.map<DropdownMenuItem>((dynamic value) {
        return DropdownMenuItem<dynamic>(
          value: value,
          child: Text(
            value.toString(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        );
      }).toList(),
      value: val,
      hint: hint,
      onChanged: onChanged,
      isExpanded: true,
    );
  }
}
