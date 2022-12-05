//
// abstract Kin {
//
// }

enum FamilyStatus { MOTHER, YOU, FATHER, SIBLING }

class CloseKin {
  //: Kin {

  var _yearofbirth = 1900; //year of birth
  set(int newValue) {
    _yearofbirth = newValue;
    _years = DateTime.now().year - _yearofbirth; //year_of_birth;
  }

  var _years = 0; //y.o.
  var _family_status = FamilyStatus.FATHER; //family status

  get status => _family_status;
  get yearOfBirth => _yearofbirth;

  CloseKin(this._yearofbirth, this._family_status) {
    _years = DateTime.now().year - _yearofbirth; //year_of_birth;
  }

  CloseKin.You(year_of_birth) {
    _yearofbirth = year_of_birth;
    _years = 0;
    _family_status = FamilyStatus.YOU;
  }

  CloseKin.Mother(year_of_birth) {
    _yearofbirth = year_of_birth;
    _years = 0;
    _family_status = FamilyStatus.MOTHER;
  }

  CloseKin.Father(year_of_birth) {
    _yearofbirth = year_of_birth;
    _years = 0;
    _family_status = FamilyStatus.FATHER;
  }

  CloseKin.Sibling(year_of_birth) {
    _yearofbirth = year_of_birth;
    _years = 0;
    _family_status = FamilyStatus.SIBLING;
  }

  void showKin() {
    print("${this._family_status} ${this._years} ${this.hashCode}");
  }

  @override
  String toString() {
    return "$_family_status  $_yearofbirth  $_years";
  }
}
