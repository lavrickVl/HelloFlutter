import 'package:familyanchors/ui/elements/RowSpacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BirthDateButton extends StatefulWidget {
  var onSelectionChanged;
  var birthdayYear = "";

  BirthDateButton({Key? key, required this.onSelectionChanged, required this.birthdayYear})
      : super(key: key);

  @override
  State<BirthDateButton> createState() => _BirthDateButtonState();
}

class _BirthDateButtonState extends State<BirthDateButton> {
  var _dateController = TextEditingController();

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    _dateController.value = _dateController.value.copyWith(
      text: widget.birthdayYear,
      selection: TextSelection.collapsed(offset: widget.birthdayYear.length),
    );


    return TextField(
      controller: _dateController,
      // enabled: false,
      readOnly: true,
      onTap: () {
        showModalBottomSheet(
          //showBottomSheet
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RowSpacer(),
                const Text(
                  "Pick birth date",
                  style: TextStyle(fontSize: 36),
                ),
                RowSpacer(),
                SfDateRangePicker(
                  onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
                    _dateController.value = _dateController.value.copyWith(
                      text: dateRangePickerSelectionChangedArgs.value.toString(),
                      selection: const TextSelection.collapsed(offset: 10),
                    );
                    return widget.onSelectionChanged;
                  },
                ),
              ],
            );
          },
        );
      },
      obscureText: false,
      showCursor: false,
      focusNode: FocusNode(),
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Birth Date",
          prefixIcon: const Icon(Icons.calendar_month),
          suffixIcon: IconButton(
              onPressed: () {
                _dateController.clear();
              },
              icon: const Icon(Icons.clear))),
    );
  }
}
