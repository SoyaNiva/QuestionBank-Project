import 'package:flutter/material.dart';
import 'package:qbankproject/psswrdresetsucsspg.dart';

class sixthpage extends StatelessWidget {
  const sixthpage({super.key});

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
                height: 120,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50,top: 25),
              child: Text(
                'Reset your password',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38,right: 38),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'New Password',
                    border: UnderlineInputBorder(),
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 158, 153, 153))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38,right: 38,bottom: 40),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Confirm New Password',
                    border: UnderlineInputBorder(),
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 158, 153, 153))),
              ),
            ),ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>seventhpage()))
                  ;
                  },
                  child: Text(
                    'RESET YOUR PASSWORD',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )),
          ],
        )),
      ),
    );
  }
}
