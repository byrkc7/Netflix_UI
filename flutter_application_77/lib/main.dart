import 'package:flutter/material.dart';
import 'package:flutter_application_77/dowland.dart';
import 'package:flutter_application_77/my_list.dart';
import "search.dart";
import 'AnaSayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primaryColor: Colors.black),
      home: NetflixTab(),
    );
  }
}

class NetflixTab extends StatelessWidget {
  const NetflixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: Container(
              color: Colors.black,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                    ),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.search,
                    ),
                    text: "Search",
                  ),
                  Tab(
                    icon: Icon(Icons.file_download),
                    text: "Dowlands",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.list,
                    ),
                    text: "My List",
                  ),
                ],
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
              ),
            ),
            body: TabBarView(
              children: [
                AnaSayfa(),
                SearchPage(),
                DowlandPage(),
                ListPage(),
              ],
            ),
          ),
        ));
  }
}
