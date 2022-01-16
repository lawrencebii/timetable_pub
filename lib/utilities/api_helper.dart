import 'dart:convert';

import 'package:timetable/Models/class_model.dart';
import 'package:timetable/Models/class_response_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {

  Future<ClassResponseModel> fetchUnits() async {
    final response = await http.get(Uri.parse(
        'https://southrift.jkuatcatcom.org/public/api/timetable'));

    if (response.statusCode == 200) {
      return ClassResponseModel.fromJson(
          jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load');
    }
  }

  
}
