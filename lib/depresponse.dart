class Department {

   int? id;
  String? name;
  String? code;
  bool? status;
  List<Data>? data;

  Department({this.status, this.data});

  Department.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  
}

class Data {
  int? id;
  String? name;
  String? code;

  Data({this.id, this.name, this.code});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
  }

}