import 'dart:convert';
import '';
import 'package:http/http.dart' as http;

import '../utility/toast.dart';



var BaseURL="https://sales-api.made-in-bd.net/api/v1";
var RequestHeader={"Content-Type":"application/json", 'accept':'*/*'};

Future<bool> LoginRequest(Username, Password) async{
  var URL=Uri.parse("${BaseURL}/login");
  var response= await http.post(URL,headers: {
    'Content-Type': 'application/json; charset=utf-8',
    'accept': '*/*',
    "Username": Username,
    "Password": Password
  },body: null);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);
  print(ResultCode);
  print(ResultBody);
  if(ResultCode==200&& ResultBody["success"]==true){
    successToast("Login Success");
    return true;
  }
  else{
    errorToast("${ResultBody['error']}");
    return false;
  }
}
