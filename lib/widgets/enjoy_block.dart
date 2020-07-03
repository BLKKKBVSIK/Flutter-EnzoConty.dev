import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/kColors.dart';

class EnjoyBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: const Text(
              "3 things I do enjoy in my jobs:",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: kWhitishBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(color: kDarkerBlue, fontSize: 16),
                        children: <TextSpan>[
                      TextSpan(
                          text:
                              '\u2022 What I love the most, of course, is being '),
                      TextSpan(
                        text: 'wrong',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: ', learning why, and improving from that.\n'),
                    ])),
                RichText(
                  text: const TextSpan(
                      style: TextStyle(color: kDarkerBlue, fontSize: 16),
                      children: [
                        TextSpan(text: '\u2022 Work on complex problems and '),
                        TextSpan(
                          text: 'solve new challenges.\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                RichText(
                  text: const TextSpan(
                      style: TextStyle(color: kDarkerBlue, fontSize: 16),
                      children: [
                        TextSpan(text: '\u2022'),
                        TextSpan(
                          text: ' Creating the best content possible',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: " by putting myself in the user's shoes.",
                        ),
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
