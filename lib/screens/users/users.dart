import 'package:api_app/screens/home/homestyle.dart';
import 'package:api_app/services/service.dart';
import 'package:api_app/widget/user_widget.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),

        title: Text("Users", style: homePrimaryTexts),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => users_widget(services.users[index]),
        itemCount: services.users.length,
      ),
    );
  }
}
