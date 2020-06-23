import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/screens/screenList.dart';
import 'package:flutter_enzoconty/widgets/buttonTabs.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enzo CONTY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 384.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://enzoconty.dev/img/hero-img.jpg",
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Enzo CONTY",
                                      style: TextStyle(
                                          fontSize: 32.0, color: Colors.white),
                                    ),
                                    Text(
                                      "  Full Stack Developer",
                                      style: TextStyle(
                                          fontSize: 21.0, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Container(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          createTabs("About", 0),
                          createTabs("Hobbies", 1),
                          createTabs("Experience", 2),
                          createTabs("Contact", 3),
                          createTabs("Skills", 4),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            screenList[selectedIndex],
            Stack(
              children: [
                Container(
                  height: 384.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://enzoconty.dev/img/medusa.jpg",
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Website and background by Enzo CONTY",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "The website content is licensed ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          InkWell(
                              onTap: () {
                                html.window.open("https://creativecommons.org/licenses/by-nc-sa/4.0/","Licensing");
                              },
                              child: Text("CC BY NC SA 4.0.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0)))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget createTabs(String title, int tab) {
    bool isSelected = selectedIndex == tab ? true : false;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = tab;
          });
        },
        child: ButtonTabs(title, isSelected),
      ),
    );
  }
}
