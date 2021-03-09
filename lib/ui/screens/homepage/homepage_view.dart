import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/ui/screens/homepage/homepage_viewmodel.dart';
import 'package:flutter_enzoconty/ui/widgets/button_tabs.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 384.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/hero-img.jpg",
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
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
                              Container(),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) {
                            List<String> tabsTitles = [
                              "About",
                              "Hobbies",
                              "Experience",
                              "Contact",
                              "Skills"
                            ];

                            return Expanded(
                              child: InkWell(
                                onTap: () {
                                  model.setSelectedTabIndex(index);
                                },
                                child: ButtonTabs(
                                  title: tabsTitles[index],
                                  isSelected: model.selectedTabIndex == index
                                      ? true
                                      : false,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              model.displayTabScreen(),
              Stack(
                children: [
                  Container(
                    height: 384.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/medusa.jpg",
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Website and background by Enzo CONTY",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "The website content is licensed ",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                            InkWell(
                                onTap: () async {
                                  await launch(
                                      "https://creativecommons.org/licenses/by-nc-sa/4.0/");
                                },
                                child: const Text("CC BY NC SA 4.0.",
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
      ),
    );
  }
}
