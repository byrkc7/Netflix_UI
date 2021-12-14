import 'package:flutter/material.dart';

class DowlandPage extends StatelessWidget {
  const DowlandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: DowlandPageGorunum(),
    );
  }
}

class DowlandPageGorunum extends StatelessWidget {
  const DowlandPageGorunum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Dowlands",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(children: [
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    child: Image(
                      image: AssetImage("assets/iron_man_3.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "İron Man 3",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "  To Be Continue  '1:20:18'",
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        " Dowlanded",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      child: Icon(Icons.play_circle_fill_outlined)),
                ],
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
