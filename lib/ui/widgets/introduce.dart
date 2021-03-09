import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduce extends StatefulWidget {
  @override
  _IntroduceState createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: kBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, let me introduce myself:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'I am Enzo CONTY, and I am a 23 years old ',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  TextSpan(
                      text: 'freelance developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          await launch("https://www.malt.fr/profile/enzoconty");
                        }),
                  TextSpan(
                    text: ' and also a PhD student in ',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  TextSpan(
                      text: 'СПбГУТ.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          await launch("https://www.sut.ru/");
                        }),
                ]),
              ),
              Text("", style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text("I am passionate about computer science for 5+ years now.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text(
                  "I learned multiples programming languages to be the most versatile.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text(
                  "I’ve worked on many projects that are interresting and allowed me to improve my skills.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text("I hope we can meet so I can introduce myself in person.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text("", style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text("Kindly, Enzo CONTY",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}
