import 'package:familyanchors/domain/DataProvider.dart';
import 'package:familyanchors/model/Kin.dart';

class ParentsProfileVM {
  ParentsProfileVM(this._dataProvider) : super() {
    _kinsList = _dataProvider.getKinsList();
    print("ListKins ${_kinsList.toString()}");
    _dataProvider.showKinsList();
    print(this.hashCode);
  }

  // List<FamilyStatus> _profiles = [
  //   FamilyStatus.MOTHER,
  //   FamilyStatus.YOU,
  //   FamilyStatus.MOTHER,
  // ];

  DataProvider _dataProvider;
  List<CloseKin> _kinsList = List.empty();
  CloseKin selectedProfile = CloseKin(0, FamilyStatus.YOU);
  List<int> flexList = [0,1,0];

  void saveParents(List<CloseKin> kinsList) {
    _dataProvider.writeKinsList(kinsList);
  }

  List<CloseKin> getParentsProfiles() {
    _kinsList = _dataProvider.getKinsList();

    return List.empty();
  }

  void changeStatusProfile(FamilyStatus changedSelectedStatus) {
    switch (changedSelectedStatus) {
      case FamilyStatus.YOU:
        {
          selectedProfile = CloseKin.You(0);
          return;
        }

      case FamilyStatus.FATHER:
        {
          selectedProfile = CloseKin.Father(0);
          return;
        }

      case FamilyStatus.MOTHER:
        selectedProfile = CloseKin.Mother(0);
        return;

      case FamilyStatus.SIBLING:
        selectedProfile = CloseKin.Sibling(0);
        return;
    }
  }

  void changeProfileLeft() {
    switch (selectedProfile.status) {
      case FamilyStatus.MOTHER:
        {
          selectedProfile = _kinsList.elementAt(0);
          flexList = [1, 0 , 0];
          return;
        }

      case FamilyStatus.YOU:
        {
          selectedProfile = _kinsList.elementAt(0);
          flexList = [1, 0 , 0];
          return;
        }

      case FamilyStatus.FATHER:
        {
          selectedProfile = _kinsList.elementAt(1);
          flexList = [0, 1, 0];
          return;
        }
    }
  }

  void changeProfileRight() {
    switch (selectedProfile.status) {
      case FamilyStatus.MOTHER:
        {
          selectedProfile = _kinsList.elementAt(1);
          flexList = [0, 1, 0];

          return;
        }

      case FamilyStatus.YOU:
        {
          selectedProfile = _kinsList.elementAt(2);
          flexList = [0, 0, 1];
          return;
        }

      case FamilyStatus.FATHER:
        {
          selectedProfile = _kinsList.elementAt(2);
          flexList = [0, 0, 1];
          return;
        }
    }
  }

  void saveParent(int birthYear) {
    CloseKin kin = CloseKin(birthYear, selectedProfile.status);
    _dataProvider.writeKin(kin);
  }

}
