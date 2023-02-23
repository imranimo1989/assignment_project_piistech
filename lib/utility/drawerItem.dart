import 'package:flutter/material.dart';

import '../Model/apiClient.dart';

Drawer ProfileDrawer(context, userData) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
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
                '${userData['fullName']}',
                style: TextStyle(color: Colors.green),
              ),
              accountEmail: Text(
                '${userData['designation']}',
                style: TextStyle(color: Colors.green),
              ),
              decoration: const BoxDecoration(color: Colors.white)),
        ),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.work),
            title: const Text('Company Name'),
            subtitle: Text('${userData['companyName']}')),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.phone),
            title: const Text('Phone'),
            subtitle: Text('${userData['phone']}')),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.email),
            title: const Text('Email'),
            subtitle: Text('${userData['email']}')),
        ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.date_range_rounded),
            title: const Text('Joining Date'),
            subtitle: Text('${userData['joinDate']}')),
        const Divider(
          height: 2,
          color: Colors.black26,
        ),
        ListTile(
            iconColor: Colors.red,
            tileColor: Colors.black12,
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              RemoveToken();
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            }),
      ],
    ),
  );
}
