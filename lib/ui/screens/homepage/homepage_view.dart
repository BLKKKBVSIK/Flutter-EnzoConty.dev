import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';
import 'package:flutter_enzoconty/ui/screens/homepage/homepage_viewmodel.dart';
import 'package:flutter_enzoconty/ui/widgets/animated_navbar.dart';
import 'package:flutter_enzoconty/ui/widgets/button_tabs.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  AnimationController _ColorAnimationController;

  // ignore: non_constant_identifier_names
  AnimationController _TextAnimationController;
  Animation _colorTween, _navbarName, _drawerTween;

  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _navbarName =
        Tween(begin: 0.0, end: 1.0).animate(_ColorAnimationController);
    _colorTween = ColorTween(begin: Colors.transparent, end: kNavBarBlue)
        .animate(_ColorAnimationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 200);

      _TextAnimationController.animateTo(scrollInfo.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, model, child) => Scaffold(
        key: scaffoldKey,
        drawer: Drawer(),
        backgroundColor: Colors.white,
        body: NotificationListener<ScrollNotification>(
          onNotification: scrollListener,
          child: Stack(
            children: [
              SingleChildScrollView(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          "Enzo CONTY",
                                          style: TextStyle(
                                              fontSize: 32.0,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "  Full Stack Developer",
                                          style: TextStyle(
                                              fontSize: 21.0,
                                              color: Colors.white),
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
                                horizontal:
                                    MediaQuery.of(context).size.width * .05),
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
                                        isSelected:
                                            model.selectedTabIndex == index
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
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
                                              color: Colors.white,
                                              fontSize: 18.0)))
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
              AnimatedAppBar(
                drawerTween: _drawerTween,
                onPressed: () {
                  scaffoldKey.currentState.openDrawer();
                },
                colorAnimationController: _ColorAnimationController,
                colorTween: _colorTween,
                nameTween: _navbarName,
              )
            ],
          ),
        ),
      ),
    );
  }
}
