

import 'package:familyanchors/model/Kin.dart';

class DataProvider {
  factory DataProvider() {
    print(_instance.hashCode);
    return _instance;
  }

  DataProvider._();
  static final DataProvider _instance = DataProvider._();

  ///
  /// Indexes:
  /// mom - 0
  /// you - 1
  /// father - 2
  ///
  List<CloseKin> _kinsList = [
    CloseKin.Mother(0),
    CloseKin.You(0),
    CloseKin.Father(0),
  ];


  void showKinsList(){
    print(_kinsList.toString());
    print(_kinsList.first);
    print(_kinsList[1]);
    print(_kinsList[2]);
  }


  void writeKinsList(List<CloseKin> kinsList){
    _kinsList = kinsList;
  }

  void writeKin(CloseKin kin){
    switch (kin.status) {

      case FamilyStatus.MOTHER: {
        _kinsList[0] = kin;
        print(_kinsList.toString());
        return;
      }

      case FamilyStatus.YOU: {
        _kinsList[1] = kin;
        print(_kinsList.toString());
        return;
      }

      case FamilyStatus.FATHER: {
        _kinsList[2] = kin;
        print(_kinsList.toString());
        return;
      }
    }
  }

  List<CloseKin> getKinsList(){
    return _kinsList;
  }
}