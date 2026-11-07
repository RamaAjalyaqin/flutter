import 'package:flutter/material.dart';
import 'dart:convert';

class CourseModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String instructor;
  final num price;
  final String location;
  final String schedule;
  final DateTime startDate;
  final DateTime endDate;
  final int? seats;
  final String? image;
  final bool isPublished;
  final int? seatsLeft;

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.instructor,
    required this.price,
    required this.location,
    required this.schedule,
    required this.startDate,
    required this.endDate,
    this.seats,
    this.image,
    required this.isPublished,
    this.seatsLeft,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      instructor: json['instructor'],
      price: json['price'],
      location: json['location'],
      schedule: json['schedule'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      seats: json['seats'],
      image: json['image'],
      isPublished: json['isPublished'],
      seatsLeft: json['seatsLeft'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'instructor': instructor,
      'price': price,
      'location': location,
      'schedule': schedule,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'seats': seats,
      'image': image,
      'isPublished': isPublished,
      'seatsLeft': seatsLeft,
    };
  }
}

class CoursesResponse {
  final List<CourseModel> items;
  final int total;

  CoursesResponse({required this.items, required this.total});

  factory CoursesResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> list = json['items'];
    return CoursesResponse(
      items: list.map((item) => CourseModel.fromJson(item)).toList(),
      total: json['total'],
    );
  }
}
