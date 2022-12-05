import 'package:flutter/cupertino.dart';

class RowSpacer extends StatelessWidget {
  Sizes spacerSize = Sizes.M;
  double absoluteSize = 16;


  RowSpacer();

  RowSpacer.setManual({Key? key, required this.spacerSize} ) : super(key: key) {

    switch(spacerSize){
      case Sizes.S: {
        absoluteSize = 8;
      } break;

      case Sizes.M: {
        absoluteSize = 16;
      } break;

      case Sizes.L: {
        absoluteSize = 32;
      } break;

      case Sizes.XL: {
        absoluteSize = 64;
      } break;
    }
  }




  @override
  Widget build(BuildContext context) {
    return SizedBox(height: absoluteSize);
  }
}


enum Sizes {
  S, M, L, XL;
}