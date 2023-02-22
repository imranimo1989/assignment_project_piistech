import 'package:flutter/material.dart';

BottomNavigationBar appBottomNav(currentIndex,onItemTapped){
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: "All Employee"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Active"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_off),
          label: "Inactive"
      ),

    ],
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.black54,
    currentIndex: currentIndex,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    onTap: onItemTapped,
    type: BottomNavigationBarType.fixed,
  );
}