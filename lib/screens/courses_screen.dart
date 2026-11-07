
import 'package:final_project/APIs/providers/courses_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {


  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CourseProvider>();
    return Scaffold(
      appBar: AppBar(title: Text('الكورسات (${provider.total})')),
      body:provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : provider.error != null
          ? Center(child: Text(provider.error!))
          : Container(
            width: double.infinity,
            height:double.infinity ,
            color: const Color(0xFFF0FAFF),
            child: ListView.builder(
                itemCount: provider.courses.length,
                itemBuilder: (context, index) {
                  final course = provider.courses[index];
                  return Card(
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(course.title),
                      subtitle: Text(
                        '${course.instructor}\n'
                        '${course.schedule} • ${course.location}\n'
                        'المقاعد المتبقية: ${course.seatsLeft ?? 'غير محدد'}',
                      ),
                      isThreeLine: true,
                      trailing: Text('\$${course.price}'),
                    ),
                  );
                },
              ),
          ),
    );
  }
}
