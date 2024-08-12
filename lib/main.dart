import 'package:flutter/material.dart';
import 'package:project_team/view/Date_page.dart';
import 'package:project_team/view/Homepages.dart';
import 'package:project_team/view/Userpage.dart';


// starting point of the app
void main() {
  runApp(MyApp());
}
// create a root widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepages(),
    );
  }
}

