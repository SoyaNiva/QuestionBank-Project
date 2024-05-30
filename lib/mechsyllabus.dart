import 'package:flutter/material.dart';

class ninthpage extends StatelessWidget {
  final subject = [
    'Probability Distribution,transform and numerical methods',
    'Business  economics ',
    'Life skills',
    'Advanced Mechanics of solids',
    'Thermal engineering'
  ];
  ninthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Mechanical enginnerring',
          style: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 280,
                width: double.infinity,
                child: Image.asset(
                  "assets/mech image.jpeg",
                  fit: BoxFit.fill,
                  width: 385,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 480,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: index < 6
                                    ? Colors.grey
                                    : Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text("$index"),
                            ),
                            title: Text(subject[index]),
                            onTap: () {},
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
