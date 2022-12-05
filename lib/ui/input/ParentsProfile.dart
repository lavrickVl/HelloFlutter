import 'package:familyanchors/domain/DataProvider.dart';
import 'package:familyanchors/model/Kin.dart';
import 'package:familyanchors/ui/elements/LabelNameInputField.dart';
import 'package:familyanchors/ui/elements/ParentsWidget.dart';
import 'package:familyanchors/ui/elements/SaveButton.dart';
import 'package:familyanchors/ui/input/ParentsProfileVM.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../elements/BirthDateButton.dart';
import '../elements/InputFields.dart';
import '../elements/RowSpacer.dart';
import '../elements/TestBox.dart';
import '../main.dart';

class ParentsProfileScreen extends StatefulWidget {
  ParentsProfileVM? _profileVM;
  var _dataProvider = DataProvider();

  ParentsProfileScreen({Key? key}) : super(key: key) {
    _profileVM = ParentsProfileVM(_dataProvider);
  }

  @override
  State<ParentsProfileScreen> createState() => _ParentsProfileScreenState();
}

class _ParentsProfileScreenState extends State<ParentsProfileScreen> {
  FamilyStatus _status = FamilyStatus.YOU;
  var birthYear = "";
  int selectedIndex = 1;

  var flexList = [0,1,0];
  var flexFirst = 1;


  onSelectionBirthDate(DateRangePickerSelectionChangedArgs args) {
    print(args.value.toString());

    var moonLanding = DateTime.parse(args.value.toString());
    print(moonLanding.year);
    widget._profileVM?.saveParent(moonLanding.year);
    widget._dataProvider.showKinsList();

    setState(() {
      //flexFirst = 20;
      birthYear = moonLanding.toString();
    });
  }

  changeFlex(){
    setState(() {
      flexFirst = 10;
    });
  }

  @override
  void setState(VoidCallback fn) {
    _status = widget._profileVM?.selectedProfile.status;
    selectedIndex = FamilyStatus.values.indexOf(_status);

    flexList = widget._profileVM?.flexList.toList() as List<int>;
    // flexFirst = flexList[0] == 1 ? 5 : 1;

    print("SetState: $_status");
    print("selectedIndex: $selectedIndex");
    print("flexList: $flexList");
    print("flexFirst: $flexFirst");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text('ReorderableListView Sample')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ParentsWidget(flexList),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                children: [
                  LabelNameInputField(),
                  RowSpacer(),
                  BirthDateButton(
                      onSelectionChanged: onSelectionBirthDate,
                      birthdayYear: birthYear),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: flexFirst,
                  child: SaveButton(onClick: () {

                    setState((){
                      flexList = widget._profileVM?.flexList.toList() as List<int>;
                      print("SetState Save: $flexList");
                      flexFirst = flexFirst == 20 ? 1: 20;
                    });

                    widget._profileVM?.changeProfileLeft();

                  }),
                ),
                Flexible(
                  flex: 1,//(flexList[1] == 1) ? 2 : 4,
                  child: SaveButton(onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TestBox()));
                  }),
                ),
                Flexible(
                    flex: 1,//(flexList[2] == 1) ? 2 : 4,
                    child: SaveButton(onClick: () {
                  widget._profileVM?.changeProfileRight();
                  setState(() {

                  });
                })),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
