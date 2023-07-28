import 'dart:io';

import 'package:arogyam/Screens/demo/models/user_list_model.dart';
import 'package:arogyam/Screens/demo/repo/api_Stetus.dart';
import 'package:arogyam/utils/constants.dart';
import 'package:http/http.dart' as http;

class UserServices {
  static Future<Object> getUsers() async {
    try {
      var url = Uri.parse(USERS_LIST);
      var response = await http.get(url);
      print(response.statusCode);
      if (200 == response.statusCode) {
        return Success(code: 200, Response: userListModelFromJson(response.body));
      }
      return Failure(code: USER_INVALID_RESPONSE, errorResponse: "INVALID RESPONSE ");
    } on HttpException {
      return Failure(code: NO_INTERNET_RESPONSE, errorResponse: "No INTERNET ");
    } on FormatException {
      return Failure(code: INVALID_FORMAT, errorResponse: "INVALID FORMAT ");
    } catch (e) {
      print(e);
      return Failure(code: UNKNOWN_ERROR, errorResponse: e.toString());
    }
  }
}
