import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/kColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'dart:html' as html;

import 'package:websafe_svg/websafe_svg.dart';

class GithubResume extends StatefulWidget {
  double width;

  GithubResume(this.width);

  @override
  _GithubResumeState createState() => _GithubResumeState();
}

class _GithubResumeState extends State<GithubResume> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          githubBlock(widget.width),
          resumeBlock(widget.width),
        ],
      ),
    );
  }
}

Widget githubBlock(double width) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: width / 2 - 12,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://enzoconty.dev/img/medusade.jpg",
            ),
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Github",
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: WebsafeSvg.asset('assets/icons/github-original-wordmark.svg', color: Colors.white, height: 80.0)
                  ),
                  RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
                    onPressed: () {
                      //html.window.open("https://github.com/BLKKKBVSIK","Github");
                    },
                    color: kBlue,
                    child: Text(
                      "View it",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget resumeBlock(double width) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: width / 2 - 12,
        decoration: BoxDecoration(
          color: kGreen,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My resume",
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: FaIcon(FontAwesomeIcons.solidFile,
                        color: Colors.white, size: 80.0),
                  ),
                  RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
                    onPressed: () {
                      //html.window.open("https://enzoconty.dev/.documents/ENCV.pdf","Resume");
                    },
                    color: kBlue,
                    child: Text(
                      "Read it",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    ),
  );
}
