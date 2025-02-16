import 'package:flutter/foundation.dart';

class UserDataProvider extends ChangeNotifier {
  String _id = '';
  String _password = '';

  String get id => _id;
  String get password => _password;

    void setId(String newId) {
    _id = newId;
    notifyListeners();
  }

  void setPassword(String newPassword) {
    _password = newPassword;
    notifyListeners();
  }

  void clearUserData() {
    _id = '';
    _password = '';
    notifyListeners();
  }

  void setUserData(String id, String password) {
    _id = id;
    _password = password;
    notifyListeners();
  }



}
