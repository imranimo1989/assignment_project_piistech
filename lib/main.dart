import 'package:assignment_project_piistech/ui/app_screens/login-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      title: 'Flutter Assignment project for Piistech',
        theme: ThemeData(

          primarySwatch: Colors.green,
        ),
      home: const LoginScreen()
    );
  }
}
