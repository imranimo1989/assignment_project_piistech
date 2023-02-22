import 'package:flutter/material.dart';

class InactiveEmployee extends StatefulWidget {
  const InactiveEmployee({Key? key}) : super(key: key);

  @override
  State<InactiveEmployee> createState() => _InactiveEmployeeState();
}

class _InactiveEmployeeState extends State<InactiveEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Inactive Employee'),),);
  }
}
