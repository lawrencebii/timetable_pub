// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:timetable/Models/class_model.dart';

ClassResponseModel ClassResponseModelFromJson(String str) =>
    ClassResponseModel.fromJson(json.decode(str));

String ClassResponseModelToJson(ClassResponseModel data) => json.encode(data.toJson());

class ClassResponseModel {
  ClassResponseModel({
    required this.success,
    required this.timetable,
  });

  bool success;
  List<Timetable> timetable;

  factory ClassResponseModel.fromJson(Map<String, dynamic> json) => ClassResponseModel(
        success: json["success"],
        timetable: List<Timetable>.from(
            json["timetable"].map((x) => Timetable.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "timetable":
            List<dynamic>.from(timetable.map((x) => x.toJson())),
      };
}
