import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: ListPageGorunum(),
    );
  }
}

class ListPageGorunum extends StatelessWidget {
  const ListPageGorunum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "My List",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Row(children: [
              Image(
                height: 250,
                width: 150,
                image: AssetImage("assets/amazingspider.jpg"),
              ),
              SizedBox(
                width: 30,
              ),
              Image(
                width: 150,
                height: 250,
                image: AssetImage("assets/Örümcek_Adam_2.jpg"),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image(
                  height: 250,
                  width: 150,
                  image: AssetImage("assets/vikings.jpg"),
                ),
                SizedBox(
                  width: 30,
                ),
                Image(
                  height: 250,
                  width: 150,
                  image: AssetImage("assets/hızlı_öfkeli.jpg"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image(
                  height: 250,
                  width: 150,
                  image: AssetImage("assets/endgame.jpg"),
                ),
                SizedBox(
                  width: 30,
                ),
                Image(
                  height: 250,
                  width: 150,
                  image: AssetImage("assets/no_wat_home.jpg"),
                ),
              ],
            )
          ],
        ));
  }
}
