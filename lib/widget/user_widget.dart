import 'package:api_app/model/user_model.dart';
import 'package:flutter/material.dart';

Widget users_widget(UserModel user) {
  return ListTile(
    leading: CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(user.profileImage),
    ),

    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 10.0),
        Text(user.title),
        SizedBox(width: 5),
        Text(user.firstName),
        SizedBox(width: 5),
        Text(user.lastName),
        SizedBox(width: 5),
      ],
    ),

    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 10.0),
        Text(user.sex),
        SizedBox(width: 40),
        // Text(usermodel.country),
        SizedBox(width: 200.0),
        Text(user.email),
        SizedBox(width: 5),
      ],
    ),
  );
}
