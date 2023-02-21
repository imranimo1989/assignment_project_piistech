import 'dart:typed_data';

import 'package:assignment_project_piistech/ui/app_screens/login-screen.dart';
import 'package:flutter/material.dart';
import '../../Model/apiClient.dart';
import '../../utility/drawerItem.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map<String, String> ProfileData = {
    "profilePicture": profilePicture,
    "fullName": "",
    "designation": "",
    "companyName": "",
    "email": "",
    "phone": "",
    "joinDate": "",
    "regNo": ""
  };

  @override
  void initState() {
    ShowUserProfile();
    super.initState();
  }

  ShowBase64Image(Base64String) {
    UriData? data = Uri.parse(Base64String).data;
    Uint8List MyImage = data!.contentAsBytes();
    return MyImage;
  }

  ShowUserProfile() async {
    String? profilePicture = await ReadUserDataFromSharedPref("profilePicture");
    String? fullName = await ReadUserDataFromSharedPref("fullName");
    String? designation = await ReadUserDataFromSharedPref("designation");
    String? companyName = await ReadUserDataFromSharedPref("companyName");
    String? email = await ReadUserDataFromSharedPref("email");
    String? phone = await ReadUserDataFromSharedPref("phone");
    String? joinDate = await ReadUserDataFromSharedPref("joinDate");
    String? regNo = await ReadUserDataFromSharedPref("regNo");

    setState(() {
      ProfileData = {
        "profilePicture": "$profilePicture",
        "fullName": "$fullName",
        "designation": "$designation",
        "companyName": "$companyName",
        "email": "$email",
        "phone": "$phone",
        "joinDate": "$joinDate",
        "regNo": "$regNo"
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: ProfileDrawer(context, ProfileData),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                    children: [

                        const Text(
                          "Welcome!",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${ProfileData['fullName']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${ProfileData['designation']}  |"
                          "  ${ProfileData['companyName']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        )
                    ],
                  ),
                      )),
                ),
                const SizedBox(height: 24,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 24)),
                  onPressed: () {  },
                  child: const Text('Show All Employe List',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
