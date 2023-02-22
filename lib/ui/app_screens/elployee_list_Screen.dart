import 'package:assignment_project_piistech/EmployeeList/active_employee.dart';
import 'package:assignment_project_piistech/EmployeeList/all_employee_list.dart';
import 'package:assignment_project_piistech/EmployeeList/inactive_employee.dart';
import 'package:flutter/material.dart';

import '../../utility/bottom_navigation.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  int TabIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      TabIndex = index;
    });
  }

  final employeeOptions = [
    const AllEmployeeList(),
    const ActiveEmployee(),
    const InactiveEmployee()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: appBottomNav(TabIndex, onItemTapped),
        body: employeeOptions.elementAt(TabIndex),
      ),
    );
  }
}
