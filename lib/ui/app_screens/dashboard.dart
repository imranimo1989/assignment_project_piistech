
import 'package:flutter/material.dart';
import '../../Model/apiClient.dart';
import '../../utility/drawerItem.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map<String, String> profileData = {
    "profilePicture": "",
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
    showUserProfile();

    super.initState();
  }


  getDataLoad() async {
    setState(() {
      //dataLoadingInProgress = true;
    });
    await getAllEmployeeListFromApi();
    setState(() {
     // dataLoadingInProgress = false;
    });
  }



  void showUserProfile() async {
    String? profilePicture = await ReadUserDataFromSharedPref("profilePicture");
    String? fullName = await ReadUserDataFromSharedPref("fullName");
    String? designation = await ReadUserDataFromSharedPref("designation");
    String? companyName = await ReadUserDataFromSharedPref("companyName");
    String? email = await ReadUserDataFromSharedPref("email");
    String? phone = await ReadUserDataFromSharedPref("phone");
    String? joinDate = await ReadUserDataFromSharedPref("joinDate");
    String? regNo = await ReadUserDataFromSharedPref("regNo");

    setState(() {
      profileData = {
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
      drawer: ProfileDrawer(context, profileData),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 40),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${profileData['fullName']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${profileData['designation']}  |"
                              "  ${profileData['companyName']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 24)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/employeeList');
                      },
                      child: const Text(
                        'Show All Employee List',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
