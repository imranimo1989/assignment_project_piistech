import 'package:flutter/material.dart';

class ActiveEmployee extends StatefulWidget {
  const ActiveEmployee({Key? key}) : super(key: key);

  @override
  State<ActiveEmployee> createState() => _ActiveEmployeeState();
}

class _ActiveEmployeeState extends State<ActiveEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Active Employee'),),);
  }
}
