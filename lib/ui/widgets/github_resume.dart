// ignore: avoid_web_libraries_in_flutter
import 'package:flutter_svg/svg.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubResume extends StatefulWidget {
  @override
  _GithubResumeState createState() => _GithubResumeState();
}

class _GithubResumeState extends State<GithubResume> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: githubBlock()),
        Flexible(child: resumeBlock()),
      ],
    );
  }
}

Widget githubBlock() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/medusade.jpg",
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
                  child: SvgPicture.asset(
                      'assets/icons/github-original-wordmark.svg',
                      color: Colors.white,
                      height: 80.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kBlue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                  onPressed: () async {
                    await launch("https://github.com/BLKKKBVSIK");
                  },
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

Widget resumeBlock() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kBlue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                  onPressed: () async {
                    await launch("https://enzoconty.dev/.documents/ENCV.pdf");
                  },
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
