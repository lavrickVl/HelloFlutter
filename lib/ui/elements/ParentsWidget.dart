import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentsWidget extends StatefulWidget {
  ParentsWidget(List<int> flexList, {Key? key}) : super(key: key);
  List<int> flexList = [0, 1, 0];

  @override
  State<ParentsWidget> createState() => _ParentsWidgetState();
}

class _ParentsWidgetState extends State<ParentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: widget.flexList[0] == 1 ? 2 : 1,
            child: Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
            ),
          ),
          Expanded(
            flex: widget.flexList[1] == 1 ? 2 : 1,
            child: Image.network(
              'https://picsum.photos/250?image=9',
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
            ),
          ),
          Expanded(
            flex: widget.flexList[2] == 1 ? 2 : 1,
            child: Image.network(
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          ),
        ],
      ),
    );
  }
}
