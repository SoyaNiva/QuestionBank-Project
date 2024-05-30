import 'package:flutter/material.dart';

class thirteenthpg extends StatelessWidget {
  const thirteenthpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              child: Image.asset("assets/Group 89@3x.png"),
            ),
            Text(
              'Qbank',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Solved University Question Papers',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'For B.Tech.Semester 4 students',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, right: 20, left: 20),
              child: Text(
                'Mechanical/Civil/Computer science',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17, left: 20, right: 20),
              child: Text(
                'we beleive that eduacation has the ability to empower lives and transform the world.Our mission is simple:provide  a personalized  experiance for anyone ,anywhere throuugh our all-in-one question bank platform.A  question bank also known  as a  Q-bank,is a database of text questions that cover  a specific topic,   course,skill,or standardized exam.A users learning is personalized with the ability to create customized texts form  specific question  subsets,configure unique test  settings,and  study at ones own pace.Test review  and performance analytics enable a user to identify gaps in their understanding,accelerate learning and master content',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
