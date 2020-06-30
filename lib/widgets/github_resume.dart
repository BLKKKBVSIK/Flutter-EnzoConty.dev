import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/kColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

import 'package:websafe_svg/websafe_svg.dart';

class GithubResume extends StatefulWidget {
  final double width;

  const GithubResume(this.width);

  @override
  _GithubResumeState createState() => _GithubResumeState();
}

class _GithubResumeState extends State<GithubResume> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        githubBlock(widget.width),
        resumeBlock(widget.width),
      ],
    );
  }
}

Widget githubBlock(double width) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: width / 2 - 12,
      decoration: const BoxDecoration(
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
            const Text(
              "Github",
              style: TextStyle(color: Colors.white, fontSize: 32.0),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
            ),
            Center(
                child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: WebsafeSvg.asset(
                        'assets/icons/github-original-wordmark.svg',
                        color: Colors.white,
                        height: 80.0)),
                RaisedButton(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 18.0),
                  onPressed: () {
                    html.window.open("https://github.com/BLKKKBVSIK", "Github");
                  },
                  color: kBlue,
                  child: const Text(
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
  );
}

Widget resumeBlock(double width) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: width / 2 - 12,
      decoration: const BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FittedBox(
              child: Text(
                "My resume",
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
            ),
            Center(
                child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: FaIcon(FontAwesomeIcons.solidFile,
                      color: Colors.white, size: 80.0),
                ),
                RaisedButton(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 18.0),
                  onPressed: () {
                    // ignore: unsafe_html
                    html.window.open(
                        "https://enzoconty.dev/.documents/ENCV.pdf", "Resume");
                  },
                  color: kBlue,
                  child: const Text(
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
  );
}
