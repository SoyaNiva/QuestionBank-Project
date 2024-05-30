import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:qbankproject/apiclass.dart';
import 'package:qbankproject/sign-inpage.dart';

class College {
  final int id;
  final String name;

  College({
    required this.id,
    required this.name,
  });

  factory College.fromJson(Map<String, dynamic> json) {
    return College(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
    );
  }
}

class Department {
  final int id;
  final String name;
  final String code;

  Department({
    required this.id,
    required this.name,
    required this.code,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      code: json['code'] ?? '',
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _secondpageState();
}

class _secondpageState extends State<SecondPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _newpasswordController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _phonenumberController = TextEditingController();

  var dropdownValueDepartment = "Select Department";
  var dropdownValueCollege = "Select College";

  List<Department> departments = [];
  List<College> colleges = [];

  Color _studentColor = Colors.white;
  Color _staffColor = Colors.white;
  Color _othersColor = Colors.white;

  void _selectButton(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        _studentColor = Colors.blue;
        _staffColor = Colors.white;
        _othersColor = Colors.white;
      } else if (buttonNumber == 2) {
        _studentColor = Colors.white;
        _staffColor = Colors.blue;
        _othersColor = Colors.white;
      } else if (buttonNumber == 3) {
        _studentColor = Colors.white;
        _staffColor = Colors.white;
        _othersColor = Colors.blue;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDepartments();
    fetchColleges();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
              children: [
        SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 235, 249, 255),
            height: 360,
            width: 200,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/Subtraction 1@3x.png",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        bottom: 35,
                        top: 0,
                        left: 95,
                        child: Image.asset(
                          "assets/Icon feather-user.png",
                          width: 200.0,
                          height: 200.0,
                        ))
                  ],
                ),
                Text(
                  'REGISTRATION',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'Enter  email*',
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 158, 153, 153))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: 'Enter  password*',
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 158, 153, 153))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: _newpasswordController,
                    decoration: InputDecoration(
                        hintText: 'Confirm new password*',
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 158, 153, 153))),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextFormField(
            controller: _firstnameController,
            decoration: InputDecoration(
                hintText: 'First Name*',
                border: UnderlineInputBorder(),
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 158, 153, 153))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextFormField(
            controller: _lastnameController,
            decoration: InputDecoration(
                hintText: 'Last Name*',
                border: UnderlineInputBorder(),
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 158, 153, 153))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextFormField(
            controller: _phonenumberController,
            decoration: InputDecoration(
                hintText: 'Phone Number*',
                border: UnderlineInputBorder(),
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 158, 153, 153))),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 220, top: 18, bottom: 18),
            child: Text(
              'Category',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                _selectButton(1);
              },
              style: ElevatedButton.styleFrom(primary: _studentColor),
              child: Text('student'),
            ),
            ElevatedButton(
              onPressed: () {
                _selectButton(2);
              },
              style: ElevatedButton.styleFrom(primary: _staffColor),
              child: Text('staff'),
            ),
            ElevatedButton(
              onPressed: () {
                _selectButton(3);
              },
              style: ElevatedButton.styleFrom(primary: _othersColor),
              child: Text('others'),
            ),
          ],
        ),
      
     Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, bottom: 30, top: 30),
          child: Container(
            height: 62,
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                    labelText: 'College',
                    border: OutlineInputBorder(),
                    hintText: 'College'),
                value: dropdownValueCollege,
                items: [
                DropdownMenuItem(
                  value: 'Select College',
                  child: Text('Select College'),
                ),
                ...colleges.map<DropdownMenuItem<String>>((college) {
                  return DropdownMenuItem<String>(
                    value: college.name,
                    child: Text('${college.name}'),
                  );
                }).toList(),
              ],
                
            onChanged: (newvalue) {
                  setState(() {
                   dropdownValueCollege =   newvalue.toString();
                  });
                },
                
                
                onTap: () {
                fetchColleges();
              },
                ),
          ),
        ),

           
             














      
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50,top: 25),
          child: Container(
        
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: 'Department',
                border: OutlineInputBorder(),
              ),
              value: dropdownValueDepartment,
              items: [
                DropdownMenuItem(
                  value: 'Select Department',
                  child: Text('Select Department'),
                ),
                ...departments.map<DropdownMenuItem<String>>((department) {
                  return DropdownMenuItem<String>(
                    value: department.name,
                    child: Text('${department.name}'),
                  );
                }).toList(),
              ],
              onChanged: (newvalue) {
                setState(() {
                  dropdownValueDepartment = newvalue.toString();
                });
              },
              onTap: () {
                fetchDepartments();
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40, left: 50, right: 50),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red)),
              onPressed: () {
                registerUser();
              },
              child: Text(
                'CREATE ACCOUNT',
                style: TextStyle(fontSize: 17, color: Colors.white),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 158, 153, 153)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => thirdpage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
              ],
            ));
  }

  Future<void> fetchDepartments() async {
    print('fetchDepartments() called');

    try {
      print('Sending request to fetch departments...');
      Dio dio = Dio();
      dio.options.headers['Accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer 31cd4eb45b3aff17';

      Response response = await dio
          .get('https://qsolve.iroidtechnologies.in/api/get_departments');

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        print(data);
        List<Department> fetchedDepartments =
            data.map((department) => Department.fromJson(department)).toList();

        print(fetchedDepartments);

        List<String> departmentNames = ["Select Department"];
        departmentNames
            .addAll(fetchedDepartments.map((department) => department.name));

        setState(() {
          departments = fetchedDepartments;
          dropdownValueDepartment = "Select Department";
        });

        print('Fetched Departments:');
        departments.forEach((department) {
          print(
              'ID: ${department.id}, Name: ${department.name}, Code: ${department.code}');
        });
      } else {
        print('Failed to fetch departments: ${response.statusCode}');
      }
    } catch (error) {
      print('Failed to fetch departments: $error');
    }
  }

  Future<void> fetchColleges() async {
    print('fetchColleges() called');

    try {
      print('Sending request to fetch colleges...');
      Dio dio = Dio();
      dio.options.headers['Accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer 31cd4eb45b3aff17';

      Response response =
          await dio.get('https://qsolve.iroidtechnologies.in/api/colleges');

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        print(data);

        List<College> fetchedColleges =
            data.map((college) => College.fromJson(college)).toList();

        print(fetchedColleges);

        List<String> collegeNames = ["Select College"];
        collegeNames
            .addAll(fetchedColleges.map((college) => college.name ?? ""));

        setState(() {
          colleges = fetchedColleges;
          dropdownValueCollege = "Select College";
        });

        print('Fetched colleges:');

        colleges.forEach((college) {
          print('ID: ${college.id}, Name: ${college.name}, ');
        });
      } else {
        print('Failed to fetch college: ${response.statusCode}');
      }
    } catch (error) {
      print('Failed to fetch college $error');
    }
  }

  void registerUser() async {
    var _email = _emailController.text;
    final _password = _passwordController.text;
    final _newpassword = _newpasswordController.text;
    final _firstname = _firstnameController.text;
    final _lastname = _lastnameController.text;
    final _phonenumber = _phonenumberController.text;

    if (_email.isEmpty) {
      showErrorMessage('Please enter  email');
    } else if (_password.isEmpty) {
      showErrorMessage('Please enter password');
    } else if (_newpassword.isEmpty) {
      showErrorMessage('Please enter newpassword');
    } else if (_firstname.isEmpty) {
      showErrorMessage('Please enter your firstname');
    } else if (_lastname.isEmpty) {
      showErrorMessage('please enter your lastname');
    } else if (_phonenumber.isEmpty) {
      showErrorMessage('please enter your phone number');
    } else {
      final _formdata = FormData.fromMap({
        'email': _email,
        'password': _password,
        'newpassword': _newpassword,
        'firstname': _firstname,
        'lastname': _lastname,
        'phonenumber': _phonenumber,
      });

      final Map _newformdata = {
        'first_name': _firstname,
        'last_name': _lastname,
        'email': _email,
        'mobile': int.parse(_phonenumber),
        'category': 'STUDENT',
        'department': 2,
        'password': 123456,
        'college': 'College of Engineering Pallippuram',
        'device_token': '8447yghuhj'
      };

      final result = await ApiClass().registerUserApi(_newformdata);
      print(result);
      if (result != null) {
        if (result.status == true) {
          showSuccessMessage(result.message!);
        } else {
          showErrorMessage(result.message!);
        }
      }
    }
  }

  void showErrorMessage(String message) {
    MotionToast.error(
      title: Text(
        'error',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }

  void showSuccessMessage(String message) {
    MotionToast.success(
      title: const Text(
        'Your account has been  created',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }
}

