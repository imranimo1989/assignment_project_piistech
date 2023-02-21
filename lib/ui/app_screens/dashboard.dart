import 'package:assignment_project_piistech/ui/app_screens/login-screen.dart';
import 'package:flutter/material.dart';
import '../../Model/apiClient.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

   String userName = "";

  @override
  void initState() {
   callUserData();
    super.initState();



  }

  Future<void> callUserData() async {
    String? name = await ReadUserDataFromSharedPref('fullName');

    setState(() {
      userName=name!;
      


    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(userName),
        actions: [Icon(Icons.person)],
      ),
      drawer: const Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false);
          },
          child: const Icon(Icons.logout),
        ),
      ),
    );
  }
}
