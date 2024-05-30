import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:qbankproject/apiclass.dart';
import 'package:qbankproject/forgetpsswrdpg.dart';
import 'package:qbankproject/homepage.dart';
import 'package:qbankproject/registerpage.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({super.key});

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool hidePassword = true;
  String  password ='';
  bool hidePasswordConfirm = true;
  String? confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 100, left: 35, right: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/logo-no-background.png",
                      height: 60,
                      width: 100,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'ENTER EMAIL ID',
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextFormField(obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: 'ENTER PASSWORD',
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePassword ?  Icons.visibility_off:Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle()),
                  validator: (val) {
                    confirmPassword = val;
                    if (val != null) {
                      if (val.length <= 6)
                        return 'Password must be 6 characters.';
                    } else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 350,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {
                      
                        loginuser();
                      },
                      child: Text(
                        'SIGN IN ',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => fourthpage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an  account?',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SecondPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text(
                          'Create Account',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void loginuser() async {
    final _email = _emailController.text;
    final _password = _passwordController.text;

    if (_email.isEmpty) {
      showErrorMessage1('Please enter email');
    } else if (_email.isEmpty) {
      showErrorMessage1('Please enter password');
    } else {
      final _formdata = FormData.fromMap({
        'email': _email,
        'password': _password,
        'device_token':'31cd4eb45b3aff17'



      });
      final result = await ApiClass().loginUserApi(_formdata);
      
      if (result != null) {
        if (result.status == true) {
          showSuccessMessage1("sucessfully logged");
          Navigator.push(context, MaterialPageRoute(builder: (context)=> eighthpage()));
        } else {
          showErrorMessage1("login failed");
        }
      }
    }
  }

  void showErrorMessage1(String message) {
    MotionToast.error(
      title: const Text(
        'Error',
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

  void showSuccessMessage1(String message) {
    MotionToast.success(
      title: const Text(
        'Success',
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
