
import 'package:assignment_project_piistech/ui/app_screens/dashboard.dart';
import 'package:assignment_project_piistech/ui/app_screens/elployee_list_Screen.dart';
import 'package:assignment_project_piistech/ui/app_screens/login-screen.dart';
import 'package:flutter/material.dart';


void  main(){
  runApp(const MyApp("/login"));
}

/*void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  String? token= await ReadUserDataFromSharedPref('token');
  if(token==null){
    runApp( const MyApp("/login"));
  }
  else{
    runApp( const MyApp("/"));
  }
}*/

class MyApp extends StatelessWidget {
  final String firstRoute;
  const MyApp(this.firstRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Assignment project for Piistech',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
    initialRoute: firstRoute,
    routes: {
    '/':(context)=> const Dashboard(),
    '/login':(context)=> const LoginScreen(),
    '/employeeList':(context)=> const EmployeeList(),

    });
  }
}
