import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: SearchPageGorunum(),
    );
  }
}

class SearchPageGorunum extends StatelessWidget {
  const SearchPageGorunum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 75,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText:
                          "Series is the genre you want to search for a movie...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.mic_rounded,
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(fontSize: 9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35))),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              child: Image(
                image: AssetImage("assets/topluposter.jpg"),
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }
}
