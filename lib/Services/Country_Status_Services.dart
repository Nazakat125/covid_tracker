import 'dart:convert';
import 'package:covid_tracker/Services/Utils/App_Url.dart';
import 'package:http/http.dart' as http;

class Country_Status_Services{

  Future<List<dynamic>> fatchCountryStatusRecors() async {
    var data;
    final reponce = await http.get(Uri.parse(App_Url.countryList));
    if(reponce.statusCode == 200){
       data = jsonDecode(reponce.body.toString());
      return data;
    }else{
      throw Exception('Error');
    }
  }
}