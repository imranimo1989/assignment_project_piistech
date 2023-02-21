class UserProfileData {
  Result? result;
  bool? success;
  String? error;

  UserProfileData({this.result, this.success, this.error});

  UserProfileData.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    success = json['success'];
    error = json['error'];
  }

}

class Result {
  String? token;
  String? expiresIn;
  String? validTo;
  User? user;

  Result({this.token, this.expiresIn, this.validTo, this.user});

  Result.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    expiresIn = json['expires_in'];
    validTo = json['validTo'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }


}

class User {
  String? companyId;
  String? companyName;
  String? profilePicture;
  String? userGuidId;
  int? userIntId;
  int? userGroupId;
  String? fullName;
  String? phone;
  String? email;
  String? designation;
  String? regNo;
  String? joinDate;

  User(
      {this.companyId,
        this.companyName,
        this.profilePicture,
        this.userGuidId,
        this.userIntId,
        this.userGroupId,
        this.fullName,
        this.phone,
        this.email,
        this.designation,
        this.regNo,
        this.joinDate});

  User.fromJson(Map<String, dynamic> json) {
    companyId = json['companyId'];
    companyName = json['companyName'];
    profilePicture = json['profilePicture'];
    userGuidId = json['userGuidId'];
    userIntId = json['userIntId'];
    userGroupId = json['userGroupId'];
    fullName = json['fullName'];
    phone = json['phone'];
    email = json['email'];
    designation = json['designation'];
    regNo = json['regNo'];
    joinDate = json['joinDate'];
  }

}
