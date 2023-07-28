import 'package:arogyam/Screens/demo/View_models/user_view_model.dart';
import 'package:arogyam/Screens/demo/models/user_list_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    print("widget is build");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [_ui(userViewModel)],
      )),
    );
  }

  _ui(UserViewModel userViewModel) {
    if (userViewModel.loading) {
      Container(
        child: Text("circular bar"),
      );
    }
    if (userViewModel.userError != null) {
      return Container(
        child: Text("Error"),
      );
    }
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            UserModel userModel = userViewModel.userListModel[index];
            return Container(
              child: Column(
                children: [
                  Text(userModel.name.toString(), style: TextStyle(color: Colors.black)),
                  Text(userModel.email.toString(), style: TextStyle(color: Colors.black)),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: userViewModel.userListModel.length),
    );
  }
}
