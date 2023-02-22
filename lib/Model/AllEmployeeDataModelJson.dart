class GetAllEmployeeData {
  bool? success;
  List<Result>? employeeList;
  String? error;

  GetAllEmployeeData({this.success, this.employeeList, this.error});

  GetAllEmployeeData.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['result'] != null) {
      employeeList = <Result>[];
      json['result'].forEach((v) {
        employeeList!.add(new Result.fromJson(v));
      });
    }
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.employeeList != null) {
      data['result'] = this.employeeList!.map((v) => v.toJson()).toList();
    }
    data['error'] = this.error;
    return data;
  }
}

class Result {
  String? employeeId;
  String? fullName;
  String? designation;
  String? regNo;
  String? dateOfBirth;
  String? joiningDate;
  String? sex;
  String? phoneNumber;
  String? email;
  String? profilePicture;

  Result(
      {this.employeeId,
        this.fullName,
        this.designation,
        this.regNo,
        this.dateOfBirth,
        this.joiningDate,
        this.sex,
        this.phoneNumber,
        this.email,
        this.profilePicture});

  Result.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    fullName = json['fullName'];
    designation = json['designation'];
    regNo = json['regNo'];
    dateOfBirth = json['dateOfBirth'];
    joiningDate = json['joiningDate'];
    sex = json['sex'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    profilePicture = json['profilePicture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeId'] = this.employeeId;
    data['fullName'] = this.fullName;
    data['designation'] = this.designation;
    data['regNo'] = this.regNo;
    data['dateOfBirth'] = this.dateOfBirth;
    data['joiningDate'] = this.joiningDate;
    data['sex'] = this.sex;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['profilePicture'] = this.profilePicture;
    return data;
  }
}
