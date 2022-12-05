import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


PersistentBottomSheetController<T> showBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  bool? enableDrag,
  AnimationController? transitionAnimationController,
}) {
  assert(context != null);
  assert(builder != null);
  assert(debugCheckHasScaffold(context));

  return showBottomSheet<T>(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 400,
        child: Center(
            child: SfDateRangePicker(),
        ),
      );
    },
    // backgroundColor: backgroundColor,
    // elevation: elevation,
    // shape: shape,
    // clipBehavior: clipBehavior,
    // constraints: constraints,
    // enableDrag: enableDrag,
    // transitionAnimationController: transitionAnimationController,
  );
}