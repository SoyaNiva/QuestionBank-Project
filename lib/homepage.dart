import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qbankproject/about%20q-bank.dart';
import 'package:qbankproject/changepsswrd.dart';
import 'package:qbankproject/civilsyllabus.dart';
import 'package:qbankproject/comsciencesyll.dart';
import 'package:qbankproject/mechsyllabus.dart';
import 'package:qbankproject/myprofile.dart';
import 'package:qbankproject/paymentpage.dart';
import 'package:qbankproject/samplepg.dart';
import 'package:qbankproject/sign-inpage.dart';

class eighthpage extends StatelessWidget {
  final items = ['Mechanical ', 'Civil ', 'Computer'];

  final alert = [
    'Mechanical engineering',
    'Civil engineering ',
    'Computer science engineering '
  ];
  final item = ['Rs 148.00', 'Rs 148.00', 'Rs 148.00'];
  final color = [
    Color.fromARGB(255, 99, 168, 225),
    Color.fromARGB(255, 255, 239, 99),
    Color.fromARGB(255, 234, 145, 174)
  ];

  final buttonColors = [
    Colors.orange,
    const Color.fromARGB(255, 49, 205, 54),
    Colors.blue
  ];
  eighthpage({super.key});

  Future<void> logout(BuildContext context) async {
    try {
      Dio dio = Dio();
      dio.options.headers['Accept'] = 'application/json';
      dio.options.headers['Authorization'] =
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMyIsImp0aSI6ImVhMTA4MjlmMWIzOGJlNzVmOWE2NzExNTI2NjIyNDVjZThlMTlhYmQzNTJhMDYxNzc2NTBjZWI2NzExMGM2M2JhOWM3NzFhNTA3ZmM2OTdkIiwiaWF0IjoxNzE1ODQ2NjM3LCJuYmYiOjE3MTU4NDY2MzcsImV4cCI6MTc0NzM4MjYzNywic3ViIjoiNzAiLCJzY29wZXMiOltdfQ.c5S8HybWwPM5Yz6vRZ6zyltC1AveazdEEg3esl9QB6RuVEdOeqIq71mgz7eo9y_QcDYRrh0oQJQREQjccL2mCqUehyUQmoOE3vI0bK7sGQGvjaUi7q5EtIyMzza-srzzF7sUFUy03UCujAxlYQY1Dq_O2iMJQNLcWmuCagCM-l1RprJRiyh-gcSoYiYwBmWMIZjWz6k6zOEDnGaS-N_kHBiN6dBTe0UCFRHNgogb4zu7csU3-OEus0NCZU3BVOKy3FKfo3jAqQduU1PEMg-LGb76kAgHd8ReVycdNTIKnbRV5D_UvHOOHzVOqGp84n98FRDwCVlpJf1Fj4U8tyhNqdQyCl5Cn2C7zeypjjese0tZ364C4dIw-iTAjIXN73u7R46-5IB7WmRJBowmJaI9JRasniCX4OsZjITYEAD71cgW9w1iPX86Sf0IYe0XISEJSFZHeNjCJ9I0KwDGP65dXox9Ks2udIB0HXWa3aqkMhJCtIDqypkuSeFrMXiZfiPZqQO0hxBi3paHtlZHzvFJfl5I-NTgtp_ZRVloL2dOOPiQaGixf3S18uPD9eAX028zZY4GnoMBYC4qmcYrkBrmqI128xWnB2izTxLYZgmeIos22avbfMczXaAC7bHH2aMVqyYb2jn1EnBv-IPo-VMlNDVitHkfmrW-80pQa-Z9sfo';

      
      Response response =
          await dio.get('https://qsolve.iroidtechnologies.in/api/auth/logout');

     
      if (response.data['status'] == true) {
     
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Successfully logged out'),
          ),
        );

        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => thirdpage()));

       
      } else {
       
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to logout'),
          ),
        );
      }
    } catch (error) {
      print('Error: $error');
    
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred while logging out'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 255, 244),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 203, 255, 244),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              CircleAvatar(
                radius: 38,
                child: Icon(Icons.person),
              ),
              UserAccountsDrawerHeader(
                  accountName: Text("Soya"),
                  accountEmail: Text("Soyaniva123@gmail.com")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home "),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => twelvethpg()));
                    },
                    child: Text("My profile ")),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => thirteenthpg()));
                    },
                    child: Text("About Q-bank ")),
              ),
              ListTile(
                leading: Icon(Icons.policy),
                title: Text("Privacy Policy"),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => fourteenthpg()));
                    },
                    child: Text("Change password ")),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
                onTap: () {
                 
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Confirm Logout'),
                      content: Text('Are you sure you want to logout?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); 
                          },
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            logout(context); 
                          },
                          child: Text('Yes'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: 250,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/Group 89@3x.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              SizedBox(
                height: 450,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          height: 150,
                          child: Card(
                              color: color[index],
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 100,
                                    child:
                                        Image.asset("assets/mechanical@3x.png"),
                                  ),
                                  Container(
                                    height: 80,
                                    width: 80,
                                    child: Column(
                                      children: [
                                        Text(
                                          items[index],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          item[index],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      height: 100,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                            color: Colors.grey,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            sixteenthpg()));
                                              },
                                              child: Text(
                                                'Samplepage ',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            fifteeenthpg()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: buttonColors[index],
                                              ),
                                              child: Text(
                                                'BUY NOW',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 40),
                child: Container(
                  width: 150,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (cnxt) => Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 5, sigmaY: 5),
                                      child: Container(
                                        height: 200,
                                        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                                        constraints: BoxConstraints.expand(),
                                        child: SizedBox(
                                          height: 150,
                                          child: AlertDialog(
                                            contentPadding: EdgeInsets.all(8.0),
                                            content: ConstrainedBox(
                                              constraints: BoxConstraints(
                                                  maxHeight: 450),
                                              child: Column(
                                                children: [
                                                  AppBar(
                                                    backgroundColor:
                                                        Color.fromARGB(255, 145, 230, 145),
                                                  ),
                                                  Container(
                                                    height: 350,
                                                    width: 500,
                                                    color: Colors.blue,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 130),
                                                      child: ListView.builder(
                                                        itemCount: 3,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return Row(
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      bottom:
                                                                          BorderSide(
                                                                        color: index <
                                                                                2
                                                                            ? Colors.grey
                                                                            : Colors.transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      ListTile(
                                                                    leading: Image
                                                                        .asset(
                                                                            "assets/mechanical@3x.png"),
                                                                    title: Text(
                                                                        alert[
                                                                            index]),
                                                                    onTap: () {
                                                                      if (index ==
                                                                          0) {
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                              builder: (context) => ninthpage()),
                                                                        );
                                                                      } else if (index ==
                                                                          1) {
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                              builder: (context) => tenthpage()),
                                                                        );
                                                                      } else {
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                              builder: (context) => eleventhpg()),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                    },
                    child: Text(
                      'View syllabus',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
