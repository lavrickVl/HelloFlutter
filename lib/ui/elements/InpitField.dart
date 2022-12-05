import 'package:familyanchors/ui/elements/RowSpacer.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField() : super();

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final _textController = TextEditingController();

  var message = '';

  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          RowSpacer(),

          TextField(
            controller: _textController,
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Hello",
                border: OutlineInputBorder(),
                labelText: 'Label/Name',
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear))),
          ),

          RowSpacer(),

          TextField(
            controller: _textController,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Birth Date",
                prefixIcon: Icon(Icons.calendar_month),
                suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear))),
          ),

          RowSpacer(),

          // MaterialButton(
          //     color: Colors.amber,
          //     child: const Text('Send'),
          //     onPressed: () {
          //       setState(() {
          //         message = _textController.text;
          //         _textController.clear();
          //       });
          //     }),

          RowSpacer(),

          Text(message),
          // DropdownButton(
          //     value: dropdownvalue,
          //     items: items.map((String items) {
          //       return DropdownMenuItem(
          //         value: items,
          //         child: Text(items),
          //       );
          //     }).toList(),
          //     onChanged: (String? newvalue) {
          //       setState(() {
          //         dropdownvalue = newvalue!;
          //       });
          //     })
        ]);
  }
}
