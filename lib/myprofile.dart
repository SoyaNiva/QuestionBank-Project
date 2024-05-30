import 'package:flutter/material.dart';

class twelvethpg extends StatelessWidget {
  const twelvethpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 130,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1.0))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 50),
                      child: CircleAvatar(
                        child: Icon(Icons.person),
                        radius: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 50),
                      child: Text(
                        'Safir sainudeen new',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 200,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'First name',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Last name',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Email id',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Phone number',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Category',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'College',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Department',
                        style: TextStyle(fontSize: 17, color: Colors.black),
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
}
