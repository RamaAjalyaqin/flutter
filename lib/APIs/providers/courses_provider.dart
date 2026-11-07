import 'package:final_project/APIs/models/courses_model.dart';
import 'package:final_project/APIs/services/courses_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseProvider extends ChangeNotifier {
  final CourseService _service = CourseService();
  List<CourseModel> courses = [];
  int total = 0;

  bool isLoading = false;
  String? error;

  Future<void> fetchCourses() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      final result = await _service.getCourses();
      courses = result.items;
      total = result.total;
    } catch (e) {
      error = 'حدث خطأ، حاول مرة أخرى';
    }

    isLoading = false;
    notifyListeners();
  }
}


