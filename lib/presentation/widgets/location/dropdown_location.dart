import 'package:flutter/material.dart';

class DropDownLocation extends StatelessWidget {
  const DropDownLocation(
      {super.key,
      required this.items,
      required this.onChanged,
      required this.title,
      required this.value});

  final List<DropdownMenuItem<String>> items;
  final Function(String?) onChanged;
  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
        items: items,
        onChanged: onChanged,
        hint: Text('$title'),
        value: value,
        menuMaxHeight: 300,
      )),
    );
  }
}
