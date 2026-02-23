import 'dart:convert';
import 'dart:math';
import 'package:api_app/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Services {
  String baseUrl = "https://randomuser.me/api/?results=5000";
  Map<String, dynamic> dataBody = {};
  List dataList = [];
  var users = [];

  Future<dynamic> fetchData() async {
    http.Response fetchResponse;

    fetchResponse = await http.get(Uri.parse(baseUrl));

    try {
      if (fetchResponse.statusCode == 200) {
        dataBody = jsonDecode(fetchResponse.body);
        dataList = dataBody['results'];
        users = dataList
            .map<UserModel>((json) => UserModel.fromJson(json))
            .toList();
        final int randomNumber = Random().nextInt(dataList.length);
        var _ = users[randomNumber];

        debugPrint("API fetched successfully");
      }
    } on Exception catch (e) {
      debugPrint("Error occured: $e");
    }
  }
}

Services services = Services();
