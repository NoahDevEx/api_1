import 'package:api_app/screens/home/homestyle.dart';
import 'package:api_app/screens/users/users.dart';

import 'package:api_app/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = false;
  String stateText = "View all Users";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () async {
            setState(() {
              isLoading = true;
              stateText = "Loading...";
            });

            await services.fetchData();
            if (!mounted) return;
            setState(() {
              isLoading = false;
              stateText = "View all Users";
            });
            if (!mounted) return;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserScreen()),
            );
          },
          child: SizedBox(
            height: 30.0,
            width: 150.0,

            child: isLoading
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(stateText, style: homePrimaryTexts),
                      SizedBox(width: 5.0),
                      SpinKitWave(color: Colors.white, size: 10.0),
                    ],
                  )
                : Text(
                    stateText,
                    style: homePrimaryTexts,
                    textAlign: TextAlign.center,
                  ),
          ),
        ),
      ),
    );
  }
}
