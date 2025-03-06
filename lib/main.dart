import 'package:flutter/material.dart';
import 'package:practice/custombutton.dart';
import 'package:practice/customwidgets/textformfield.dart';
import 'package:practice/testfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(), // Move Scaffold to a separate widget
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomTextformField(
            hint: 'welcome',
            iconn: Icons.person,
          ),
          CustomTextformField(
            hint: 'email',
            iconn: Icons.email,
          ),
          Custombutton(
            text: 'Submit',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScaleTransitionExample(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
