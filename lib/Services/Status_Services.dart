import 'dart:convert';

import 'package:covid_tracker/Model/WorldStateModel.dart';
import 'package:covid_tracker/Services/Utils/App_Url.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Status_Services{
  Future<WorldStateModel> fatchWorldStatusRecors() async {
    final reponce = await http.get(Uri.parse(App_Url.worldStaticApi));
    if(reponce.statusCode == 200){
var data = jsonDecode(reponce.body.toString());
return WorldStateModel.fromJson(data);
    }else{
      throw Exception('Error');
    }
  }
}