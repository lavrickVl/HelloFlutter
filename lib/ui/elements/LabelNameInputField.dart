import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabelNameInputField extends StatelessWidget {
  LabelNameInputField({Key? key}) : super(key: key);

  final _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Label / Name",
          prefixIcon: Icon(Icons.person),
          suffixIcon: IconButton(
              onPressed: () {
                _textController.clear();
              },
              icon: const Icon(Icons.clear))),
    );
  }
}
