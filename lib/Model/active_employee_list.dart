class GetActiveEmployeeData {
  bool? success;
  List<Result>? activeEmployee;
  String? error;

  GetActiveEmployeeData({this.success, this.activeEmployee, this.error});

  GetActiveEmployeeData.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['result'] != null) {
      activeEmployee = <Result>[];
      json['result'].forEach((v) {
        activeEmployee!.add(new Result.fromJson(v));
      });
    }
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.activeEmployee != null) {
      data['result'] = this.activeEmployee!.map((v) => v.toJson()).toList();
    }
    data['error'] = this.error;
    return data;
  }
}

class Result {
  String? userId;
  String? name;
  String? regNo;
  int? clockin;
  int? clockout;
  String? officeStatus;
  String? hasTicket;
  String? ticketId;
  String? clockInTime;

  Result(
      {this.userId,
        this.name,
        this.regNo,
        this.clockin,
        this.clockout,
        this.officeStatus,
        this.hasTicket,
        this.ticketId,
        this.clockInTime});

  Result.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    regNo = json['regNo'];
    clockin = json['clockin'];
    clockout = json['clockout'];
    officeStatus = json['officeStatus'];
    hasTicket = json['hasTicket'];
    ticketId = json['ticketId'];
    clockInTime = json['clockInTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['regNo'] = this.regNo;
    data['clockin'] = this.clockin;
    data['clockout'] = this.clockout;
    data['officeStatus'] = this.officeStatus;
    data['hasTicket'] = this.hasTicket;
    data['ticketId'] = this.ticketId;
    data['clockInTime'] = this.clockInTime;
    return data;
  }
}
