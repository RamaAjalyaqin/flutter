import 'dart:convert';
import 'package:final_project/APIs/models/courses_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CourseService {
  String baseUrl = 'https://bdsp3fzt-3000.euw.devtunnels.ms/api';
  Future<CoursesResponse> getCourses() async {
    final url = Uri.parse('$baseUrl/courses/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return CoursesResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('خطأ في السيرفر');
    }
  }
}