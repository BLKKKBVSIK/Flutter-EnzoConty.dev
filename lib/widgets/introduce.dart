import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/kColors.dart';

class Introduce extends StatefulWidget {
  final double width;

  const Introduce(this.width);
  @override
  _IntroduceState createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: widget.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: kBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello, let me introduce myself:",
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Text(
                "I am Enzo CONTY, and I am a 22 years old student.",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Text("I am passionate about computer science for 7 years now.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text(
                  "I learned multiples programming languages to be the most versatile.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text(
                  "I’ve worked on many projects that are interresting and allowed me to improve my skills.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text("I hope we can meet so I can introduce myself in person.",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Text(""),
              Text("Kindly, Enzo CONTY",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}
