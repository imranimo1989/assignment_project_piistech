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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['success'] = this.success;
    data['error'] = this.error;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['expires_in'] = this.expiresIn;
    data['validTo'] = this.validTo;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyId'] = this.companyId;
    data['companyName'] = this.companyName;
    data['profilePicture'] = this.profilePicture;
    data['userGuidId'] = this.userGuidId;
    data['userIntId'] = this.userIntId;
    data['userGroupId'] = this.userGroupId;
    data['fullName'] = this.fullName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['designation'] = this.designation;
    data['regNo'] = this.regNo;
    data['joinDate'] = this.joinDate;
    return data;
  }
}
