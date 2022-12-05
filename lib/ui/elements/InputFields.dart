import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'InpitField.dart';

class InputFields extends StatefulWidget {
  const InputFields({required this.status, Key? key}) : super(key: key);
  final String status;

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(widget.status),
          //InputField(),
          InputField(),
        ],
      ),
    );
  }
}
