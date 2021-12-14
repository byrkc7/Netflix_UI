import 'package:flutter/material.dart';
import 'package:flutter_application_77/my_list.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: AnaSayfaGorunum(),
    );
  }
}

class AnaSayfaGorunum extends StatelessWidget {
  const AnaSayfaGorunum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: ListView(
            children: [
              Container(
                height: 550,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/thor1.jpg"),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            child: Image(
                              image: AssetImage("assets/netflix.jpg"),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Series",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Film",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ListPage()));
                            },
                            child: Text(
                              "My List",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.add, color: Colors.white, size: 25),
                          Text("My List"),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              bannerMovie(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bannerMovie() {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Avaliable Now",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            child: Image(
              image: AssetImage("assets/no_wat_home.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                materialButtonMethod(),
              ],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage("assets/endgame.jpg"),
            ),
          ),
          materialButtonMethod(),
          Container(
            child: Image(
              image: AssetImage("assets/hızlı_öfkeli_7.jpg"),
            ),
          ),
          materialButtonMethod(),
        ],
      ),
    );
  }

  Container materialButtonMethod() {
    return Container(
      padding: EdgeInsets.only(top: 4, bottom: 4),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
              onPressed: () {},
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.only(top: 8, bottom: 8),
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              color: Colors.black),
          MaterialButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
