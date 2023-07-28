import 'package:arogyam/Screens/demo/models/user_error.dart';
import 'package:arogyam/Screens/demo/models/user_list_model.dart';
import 'package:arogyam/Screens/demo/repo/api_Stetus.dart';
import 'package:arogyam/Screens/demo/repo/user_services.dart';
import 'package:flutter/material.dart';

class UserViewModel extends ChangeNotifier {
  bool _loading = false;
  List<UserModel> _userListModel = [];
  UserError? _userError;
  bool _dataLoaded = false; // Flag to track if data has been loaded

  bool get loading => _loading;
  List<UserModel> get userListModel => _userListModel;
  UserError? get userError => _userError;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setUserListModel(List<UserModel> userListModel) {
    _userListModel = userListModel;
    _dataLoaded = true; // Set the dataLoaded flag to true
  }

  setUserError(UserError userError) {
    _userError = userError;
  }

  UserViewModel() {
    if (!_dataLoaded) {
      // Check if data has already been loaded
      getUsers();
    }
  }

  getUsers() async {
    setLoading(true);
    var response = await UserServices.getUsers();
    if (response is Success) {
      setUserListModel(response.Response as List<UserModel>);
    } else if (response is Failure) {
      print("failed");
      UserError userError = UserError(code: response.code, Response: response.errorResponse);
      setUserError(userError);
    }
    setLoading(false);
    notifyListeners();
  }
}
