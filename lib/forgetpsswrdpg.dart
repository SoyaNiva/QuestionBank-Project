import 'package:flutter/material.dart';
import 'package:qbankproject/otpverifypg.dart';

class fourthpage extends StatelessWidget {
  const fourthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  "assets/logo-no-background.png",
                  height: 100,
                  width: 350,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 27),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),  Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,bottom:50),
                child: TextFormField(
                          decoration: InputDecoration(
                hintText: 'Enter your email-id',
                border: UnderlineInputBorder(),
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 158, 153, 153))),
                        ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>fifthpg() ));
                  },
                  child: Text(
                    'RESET MY PASSWORD ',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )),   ],
          ),
        ),
      ),
    );
  }
}
