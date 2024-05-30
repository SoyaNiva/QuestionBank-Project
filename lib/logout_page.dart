import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qbankproject/sign-inpage.dart'; 

class LogoutPage extends StatelessWidget {
  final String token;

  LogoutPage({required this.token});

  Future<void> _logout(BuildContext context) async {
    try {
      Dio dio = Dio();
      dio.options.headers['Accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer $token';

      print('Token: $token'); 

      Response response = await dio.get('https://qsolve.iroidtechnologies.in/api/auth/logout');
      print(response);
      print('response');
      print('Response status: ${response.statusCode}'); 
      print('Response data: ${response.data}'); 

      if (response.data['status'] == true) {
        Fluttertoast.showToast(
          msg: response.data['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => thirdpage()),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Failed to logout: ${response.data['message']}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } catch (e) {
      print('Error: $e'); 

      Fluttertoast.showToast(
        msg: "Error: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 255, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 203, 255, 244),
        title: Text('Logout'),
      ),
      body: Center(
        child: AlertDialog(
          title: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                _logout(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}