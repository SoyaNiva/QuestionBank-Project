import 'package:flutter/material.dart';
import 'package:qbankproject/sign-inpage.dart';

class seventhpage extends StatelessWidget {
  const seventhpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        Padding(
          padding: EdgeInsets.only(left: 68, top: 45),
          child: CircleAvatar(
            radius: 45,
            child: Icon(Icons.check, size: 40.0, color: Colors.white),
            backgroundColor: Color.fromARGB(255, 0, 63, 171),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 85, top: 30),
          child: Text(
            'Password Reset',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, bottom: 55),
          child: Text(
            'Your password has been reset sucessfully',
            style:
                TextStyle(fontSize: 18, color: Color.fromARGB(255, 88, 85, 85)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 46, bottom: 35),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 0, 63, 171))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>thirdpage() ));
              },
              child: Text(
                'CONTINUE LOGIN',
                style: TextStyle(fontSize: 17, color: Colors.white),
              )),
        ),
              ],
            ));
  }
}
