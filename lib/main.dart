import 'package:final_project/APIs/providers/courses_provider.dart';
import 'package:final_project/screens/courses_screen.dart';
import 'package:final_project/screens/edit_profile_screen.dart';
import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/screens/login_screen.dart';
import 'package:final_project/screens/main_screen.dart';
import 'package:final_project/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (_) => CourseProvider()..fetchCourses(),
        ),
      ],
      child: const MyApp(),
      )
   
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Tajawal',
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
  return Scaffold(

  );
  }
}
