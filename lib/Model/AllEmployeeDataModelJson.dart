class GetEmployeList {
  List<Users>? users;
  int? total;
  int? skip;
  int? limit;

  GetEmployeList({this.users, this.total, this.skip, this.limit});

  GetEmployeList.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(new Users.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  double? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;

  Users(
      {this.id,
        this.firstName,
        this.lastName,
        this.maidenName,
        this.age,
        this.gender,
        this.email,
        this.phone,
        this.username,
        this.password,
        this.birthDate,
        this.image,
        this.bloodGroup,
        this.height,
        this.weight,
        this.eyeColor,
        this.hair,
        this.domain,
        this.ip,
        this.address,
        this.macAddress,
        this.university,
        this.bank,
        this.company,
        this.ein,
        this.ssn,
        this.userAgent});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    maidenName = json['maidenName'];
    age = json['age'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
    password = json['password'];
    birthDate = json['birthDate'];
    image = json['image'];
    bloodGroup = json['bloodGroup'];
    height = json['height'];
    weight = json['weight'];
    eyeColor = json['eyeColor'];
    hair = json['hair'] != null ? new Hair.fromJson(json['hair']) : null;
    domain = json['domain'];
    ip = json['ip'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    macAddress = json['macAddress'];
    university = json['university'];
    bank = json['bank'] != null ? new Bank.fromJson(json['bank']) : null;
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
    ein = json['ein'];
    ssn = json['ssn'];
    userAgent = json['userAgent'];
  }

}

class Hair {
  String? color;
  String? type;

  Hair({this.color, this.type});

  Hair.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    type = json['type'];
  }
}

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Address(
      {this.address, this.city, this.coordinates, this.postalCode, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    postalCode = json['postalCode'];
    state = json['state'];
  }

}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates({this.lat, this.lng});

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank(
      {this.cardExpire,
        this.cardNumber,
        this.cardType,
        this.currency,
        this.iban});

  Bank.fromJson(Map<String, dynamic> json) {
    cardExpire = json['cardExpire'];
    cardNumber = json['cardNumber'];
    cardType = json['cardType'];
    currency = json['currency'];
    iban = json['iban'];
  }


}

class Company {
  Address? address;
  String? department;
  String? name;
  String? title;

  Company({this.address, this.department, this.name, this.title});

  Company.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    department = json['department'];
    name = json['name'];
    title = json['title'];
  }


}
