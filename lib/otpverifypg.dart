import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qbankproject/Resetpsswrdpg.dart';

class fifthpg extends StatelessWidget {
  const fifthpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 50,right: 50),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Image.asset(
                    "assets/logo-no-background.png",
                    height: 120,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Verification',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50,top: 25),
                  child: Text(
                    'Enter the four digit OTP that was sent to',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'Enter your OTP that was',
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin1) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        )),
                    SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin2) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        )),
                    SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin3) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        )),
                    SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin4) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        )),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 50,bottom: 50),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('I didnt receive  a code!'),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'Resend code',
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 150),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => sixthpage()));
                      },
                      child: Text(
                        'CONTINUE ',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
