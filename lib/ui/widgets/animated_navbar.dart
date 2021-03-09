import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedAppBar extends StatelessWidget {
  AnimationController colorAnimationController;
  Animation colorTween, drawerTween, nameTween;
  Function onPressed;

  AnimatedAppBar({
    @required this.colorAnimationController,
    @required this.onPressed,
    @required this.colorTween,
    @required this.drawerTween,
    @required this.nameTween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: AnimatedBuilder(
        animation: colorAnimationController,
        builder: (context, child) => AppBar(
          toolbarHeight: 60,
          leading:
              /* IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onPressed,
          ), */
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/favicon.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          backgroundColor: colorTween.value,
          elevation: 0,
          titleSpacing: 0.0,
          centerTitle: false,
          title: Opacity(
            opacity: nameTween.value,
            child: Text(
              "Enzo CONTY - Flutter Developer",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "SanFrancisco",
                fontSize: 16,
              ),
            ),
          ),
          actions: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: nameTween.value,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        launch("mailto:contact@enzoconty.dev");
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kGreen),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Hire me 📩"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
