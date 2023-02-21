import 'dart:convert';
import 'package:assignment_project_piistech/Model/UserProfileDataModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../utility/toast.dart';




var BaseURL="https://sales-api.made-in-bd.net/api/v1";
var RequestHeader={"Content-Type":"application/json", 'accept':'*/*'};

UserProfileData userProfileData = UserProfileData();

Future<bool> LoginRequest(Username, Password) async{


  var URL=Uri.parse("${BaseURL}/login");
  var response= await http.post(URL,headers: {
    'Content-Type': 'application/json; charset=utf-8',
    'accept': '*/*',
    "Username": Username,
    "Password": Password
  },body: null);


  userProfileData = UserProfileData.fromJson(jsonDecode(response.body));

  print(userProfileData.result);
  print(userProfileData.success);
  print(userProfileData.result?.user?.companyName);
  print(userProfileData.result!.user!.companyName);
 print(userProfileData.result?.user?.fullName??"null");

  // var ResultCode=response.statusCode;
  // var ResultBody=json.decode(response.body);


  // print(ResultCode);
  // print(ResultBody);

  if(response.statusCode==200 && userProfileData.success==true){
    successToast("Login Success");
    SaveUserDataToSharePref();
    return true;
  }
  else{
    errorToast("${userProfileData.error}");
    return false;
  }
}

Future<void> SaveUserDataToSharePref() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', userProfileData.result!.token.toString());
  await prefs.setString('companyName', userProfileData.result!.user!.companyName.toString());
  await prefs.setString('profilePicture', userProfileData.result!.token.toString());
  await prefs.setString('fullName', userProfileData.result?.user?.fullName??"null");
  await prefs.setString('phone', userProfileData.result!.token.toString());
  await prefs.setString('email', userProfileData.result!.token.toString());
  await prefs.setString('regNo', userProfileData.result!.token.toString());
  await prefs.setString('joinDate', userProfileData.result!.token.toString());
  await prefs.setString('joinDate', userProfileData.result!.token.toString());
}

Future<String?>ReadUserDataFromSharedPref(key) async {
  final prefs = await SharedPreferences.getInstance();
  String? myData = prefs.getString(key);
  return myData;
}