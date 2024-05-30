import 'package:flutter/material.dart';

class sixteenthpg extends StatelessWidget {
  const sixteenthpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 103, 176),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/samplepg.jpeg",fit: BoxFit.cover,),
      ),
    );
  }
}
