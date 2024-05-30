import 'dart:ui';

import 'package:flutter/material.dart';

class fifteeenthpg extends StatefulWidget {
  const fifteeenthpg({super.key});

  @override
  State<fifteeenthpg> createState() => _fifteeenthpgState();
}

class _fifteeenthpgState extends State<fifteeenthpg> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  void _showEmptyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('incomplete card details'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'OK',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 216, 69, 58)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showNotEmptyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: const Text(
              "Payment has been sucessfully",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: Text(
                            'Q-Bank',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 58, top: 20),
                          child: Text(
                            'Rs 148.0',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Fees',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 79, top: 10),
                          child: Text(
                            'Rs 0.00',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 73, 170, 77)),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1.0, color: Colors.black))),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: Text(
                            'Total',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 55),
                          child: Text(
                            'Rs 148.00',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      'Done ',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, top: 65),
                child: Text(
                  'Payment',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 4, 90, 161),
                  borderRadius: BorderRadius.circular(25.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 3.0)),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        height: 35,
                        width: 60,
                        color: Colors.blue,
                        child: Image.asset("assets/paymentimg.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 3.0)),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 48,
                      ),
                      child: Container(
                        height: 35,
                        width: 60,
                        child: Image.asset("assets/payimage2.png"),
                      ),
                    ),
                  ],
                ),
                height: 100,
                width: 280,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 170),
              child: Text(
                'Card Number',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                        color: const Color.fromARGB(255, 158, 153, 153))),
                child: TextFormField(
                  controller: _textController,
                  decoration: InputDecoration(
                      hintText: 'card no',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 158, 153, 153))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170, top: 25),
              child: Text(
                'Expire Time',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 62, top: 25),
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                            color: const Color.fromARGB(255, 158, 153, 153))),
                    child: TextFormField(
                      controller: _textController1,
                      decoration: InputDecoration(
                          hintText: 'Month',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 158, 153, 153))),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 55, top: 25),
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                            color: const Color.fromARGB(255, 158, 153, 153))),
                    child: TextFormField(
                      controller: _textController2,
                      decoration: InputDecoration(
                          hintText: 'year',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 158, 153, 153))),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170, top: 25),
              child: Text(
                'Card Holder',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: const Color.fromARGB(255, 158, 153, 153))),
                child: TextFormField(
                  controller: _textController3,
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 158, 153, 153))),
                  onChanged: (value) {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 217, top: 25),
              child: Text(
                'CVV',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 140),
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                        color: const Color.fromARGB(255, 158, 153, 153))),
                child: TextFormField(
                  controller: _textController4,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 158, 153, 153))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      if (_textController.text.isEmpty) {
                        _showEmptyAlert(context);
                      } else {
                        _showNotEmptyAlert(context);
                        showDialog(
                          context: context,
                          builder: (ctx) => GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                color: Colors.black.withOpacity(0.5),
                                constraints: BoxConstraints.expand(),
                                child: Stack(
                                  children: [
                                    AlertDialog(
                                      title: Padding(
                                        padding: const EdgeInsets.only(top: 55),
                                        child: const Text(
                                          "Payment has been sucessfully",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              top: 20),
                                                      child: Text(
                                                        'Q-Bank',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 58,
                                                              top: 20),
                                                      child: Text(
                                                        'Rs 148.0',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              top: 10),
                                                      child: Text(
                                                        'Fees',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 79,
                                                              top: 10),
                                                      child: Text(
                                                        'Rs 0.00',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    73,
                                                                    170,
                                                                    77)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            top: BorderSide(
                                                                width: 1.0,
                                                                color: Colors
                                                                    .black))),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15,
                                                              left: 10),
                                                      child: Text(
                                                        'Total',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15,
                                                              right: 55),
                                                      child: Text(
                                                        'Rs 148.00',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            height: 150,
                                            width: 250,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 60),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 25),
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.blue)),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Done ',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                        top: 200,
                                        left: 0,
                                        right: 0,
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor:
                                              Color.fromARGB(255, 4, 90, 161),
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 9, 85, 147))),
                    child: Text(
                      'Payment ',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



