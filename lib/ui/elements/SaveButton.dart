import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


class SaveButton extends StatelessWidget {
  SaveButton({Key? key, required this.onClick}) : super(key: key);
  var onClick;


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onClick,
      // {
      //
      //   onClick
      //
      //   //todo SheetPicker
      //   // showBottomSheet(
      //   //   context: context,
      //   //   builder: (BuildContext context) {
      //   //     return SizedBox(
      //   //       height: 400,
      //   //       child: Center(
      //   //         child: SfDateRangePicker(),
      //   //       ),
      //   //     );
      //   //   },
      //   );
      // },
      height: 64,
      minWidth: 64,
      shape: const CircleBorder(),
      color: Colors.blue,
      child: const Icon(Icons.check),
    );
  }
}
