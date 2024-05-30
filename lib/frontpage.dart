import 'package:flutter/material.dart';
import 'package:qbankproject/registerpage.dart';
import 'package:qbankproject/sign-inpage.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 238, 248),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, bottom: 25),
                      child: Image.asset(
                        "assets/logo-no-background.png",
                        height: 60,
                        width: 100,
                      ),
                    )
                  ],
                ),
                Text(
                  'B.tech.Semester',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    'Mechanical/Civil/Computer science',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'This application is designed to get to your Solved University Question Papers fastest.This will help to get acquainted with the examination pattern,how question are  being  framed and,to do trend spotting  and find important questions. this also leads students to the depth  which the  topics should be studied.',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    height: 230,
                    width: 500,
                    color: Colors.white,
                  ),
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'A Product of',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'ECREFERENCE BOOKS',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, top: 18),
                  child: SizedBox(width: 300,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.red)),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondPage()));
                        },
                        child: Text(
                          'NEW USER',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SizedBox(width: 300,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdpage()));},
                        child: Text(
                          'SIGN IN ',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
