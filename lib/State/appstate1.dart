import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:timetable/Models/class_model.dart';
import 'package:timetable/Models/class_response_model.dart';
import 'package:timetable/State/list.dart';

class AppState with ChangeNotifier {

  // Class Vars
  String _selectedDay = DateFormat('EEEE').format(DateTime.now());
  bool _loading = false;
  List<Timetable> _subjects = [];
  Set<Timetable> _today = {};
  bool _error = false;
  String _error_message = '';

  List<Timetable> get subjects => _subjects;
  Set<Timetable> get today => _today;
  bool get loading => _loading;
  bool get error => _error;
  String get error_message => _error_message;

  // Alerts vars



  //Classes

  Future<void> get fetchUnits async {

    _loading = true;

    final response = await http.get(Uri.parse(
        'https://southrift.jkuatcatcom.org/public/api/timetable'));

    if (response.statusCode == 200) {
      try {
        _loading = false;
        ClassResponseModel un = ClassResponseModel.fromJson(
            jsonDecode(response.body));
        _subjects = un.timetable;


        _error = false;

        // return un;

      } catch (e) {
        print(e.toString());
        _error = true;
        _error_message = e.toString();
        // _subjects = [];
        _loading = false;
      }
    } else {
      print("Error");
      _loading = false;
      _error_message = 'Check your internet';
    }

    notifyListeners();
  }

  void initializeVal() {
    _subjects = [];
    _error = false;
    _error_message = '';
    notifyListeners();
  }

  void updateUnits() {
    if (error == true) {
      // _subjects = _offline;
    } else {
      _subjects = [];
      test = [];
      // _offline = [];
      fetchUnits;
    }
    notifyListeners();
  }

  Set<Timetable> selected(String dayToday){
    _today = {};
    int x = _subjects.length;
    for (var i in _subjects)
    {
      if (i.day.toLowerCase() == dayToday) {
        _selectedDay = i.day;
        _today.add(i);

        notifyListeners();



      }

    }
    return _today;

  }
  bool isSelected(String day){
  return day.toLowerCase() == _selectedDay.toLowerCase();}





}