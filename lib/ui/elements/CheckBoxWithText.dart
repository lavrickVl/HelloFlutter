import 'package:flutter/material.dart';

class CheckBoxWithText extends StatefulWidget {
  final String label;
  final bool checked;

  CheckBoxWithText({ required this.label,  required this.checked}) : super();

  @override
  _CheckBoxWithTextState createState() => _CheckBoxWithTextState();

}


class _CheckBoxWithTextState extends State<CheckBoxWithText> {
  bool? _value = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: (newValue) => setState(() => {
            _value = newValue
          }),
          value: _value,
        ),
        Text(widget.label),
      ],
    );
  }

  @override
  void initState() {
    setState(() {
      _value = widget.checked; 
    });
  }
}