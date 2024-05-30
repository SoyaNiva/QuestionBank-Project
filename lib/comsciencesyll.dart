import 'package:flutter/material.dart';

class eleventhpg extends StatelessWidget {
final topics=["Discrete mathematics","Software engineering","Mathematics","Programming","Algorithms"];
   eleventhpg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 114, 199),
        title: Text(
          'Computer Science  Engineering',
          style: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
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
                  padding: EdgeInsets.only(top: 10,left: 18),
                  child: SizedBox(
                    height: 480,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
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
                            title: Text(topics[index]),
                            onTap: () {},
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          color: Colors.white,
        ),
      ),);
  }
}