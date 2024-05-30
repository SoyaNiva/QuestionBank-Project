import 'package:flutter/material.dart';

class fourteenthpg extends StatefulWidget {
  fourteenthpg({super.key});

  @override
  State<fourteenthpg> createState() => _fourteenthpgState();
}

class _fourteenthpgState extends State<fourteenthpg> {
  bool hidePassword = true;
  bool hidePasswordConfirm = true;
  String? confirmPassword;
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
              padding: const EdgeInsets.only(bottom: 50, top: 25),
              child: Text(
                'Change Password',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Current Password',
                    border: UnderlineInputBorder(),
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 158, 153, 153))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: ' New Password',
                    border: UnderlineInputBorder(),
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 158, 153, 153))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Confirm New Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                    border: UnderlineInputBorder(),
                    hintStyle: TextStyle()),
                validator: (val) {
                  confirmPassword = val;
                  if (val != null) {
                    if (val.length <= 6)
                      return 'Password must be 6 characters.';
                  } else
                    return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    ;
                  },
                  child: Text(
                    'CHANGE PASSWORD',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
