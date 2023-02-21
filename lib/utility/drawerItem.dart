import 'package:assignment_project_piistech/Model/UserProfileDataModel.dart';
import 'package:flutter/material.dart';

Drawer ProfileDrawer(context, userProfileData) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          padding: const EdgeInsets.all(0),
          child: UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                margin: const EdgeInsets.only(bottom: 0.0),
                width: 20.0,
                height: 20.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://sales.made-in-bd.net/Files/Employee/2022-10-27/1643781869438b2c27d6e8ac147d7a1679ccd78b7837c.jpeg",
                    ),
                  ),
                ),
              ),
              onDetailsPressed: () {},
              accountName: Text(
                '${userProfileData['fullName']}',
                style: TextStyle(color: Colors.green),
              ),
              accountEmail: Text(
                '${userProfileData['designation']}',
                style: TextStyle(color: Colors.green),
              ),
              decoration: const BoxDecoration(color: Colors.white)),
        ),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.work),
            title: const Text('Company Name'),
            subtitle: Text('${userProfileData['companyName']}')),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.phone),
            title: const Text('Phone'),
            subtitle: Text('${userProfileData['phone']}')),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.email),
            title: const Text('Email'),
            subtitle: Text('${userProfileData['email']}')),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.date_range_rounded),
            title: const Text('Joining Date'),
            subtitle: Text('${userProfileData['joinDate']}')),
        Divider(
          height: 1,
          color: Colors.black54,
        ),
        ListTile(
        iconColor: Colors.red,
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
            }),
      ],
    ),
  );
}
