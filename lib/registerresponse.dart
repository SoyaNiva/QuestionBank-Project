class registerpg {
  bool? status;
  String? message;

  registerpg({this.status, this.message});

  registerpg.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}



class Data {
  String? email;
  String? password;
  String? newpassword;
  String? firstname;
  String?   lastname;
  String?  phonenumber;

  Data({this.email, this.password, this.newpassword, this.firstname,this.lastname,this.phonenumber});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    newpassword = json['new password'];
    firstname = json['firstname'];
    lastname  =json['lastname'];
    phonenumber =json['phonenumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['newpassword'] = this.newpassword;
    data['firstname'] =this.firstname;
    data['lastname']  =this.lastname;
    return data;
  }
}


