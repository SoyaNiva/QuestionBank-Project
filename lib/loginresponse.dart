class loginpg {
  bool? status;
  Data? data;
  String? accessToken;
  String? tokenType;

  loginpg({this.status, this.data, this.accessToken, this.tokenType});

  loginpg.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    accessToken = json['access_token'];
    tokenType = json['token_type'];
  }

  get message => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    return data;
  }
}

class Data {
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  int? role;
  String? category;
  int? department;
  int? collegeId;
  Null? college;
  Null? departments;

  Data(
      {this.firstName,
      this.lastName,
      this.mobile,
      this.email,
      this.role,
      this.category,
      this.department,
      this.collegeId,
      this.college,
      this.departments});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    email = json['email'];
    role = json['role'];
    category = json['category'];
    department = json['department'];
    collegeId = json['college_id'];
    college = json['college'];
    departments = json['departments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['role'] = this.role;
    data['category'] = this.category;
    data['department'] = this.department;
    data['college_id'] = this.collegeId;
    data['college'] = this.college;
    data['departments'] = this.departments;
    return data;
  }
}