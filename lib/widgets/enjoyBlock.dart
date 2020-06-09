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
            decoration: BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Text(
              "3 things I do enjoy in my jobs:",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: kWhitishBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        style: TextStyle(color: kDarkerBlue, fontSize: 16),
                        children: <TextSpan>[
                      const TextSpan(
                          text:
                              '\u2022 What I love the most, of course, is being '),
                      const TextSpan(
                        text: 'wrong',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                          text: ', learning why, and improving from that.\n'),
                    ])),
                RichText(
                  text: TextSpan(
                      style: TextStyle(color: kDarkerBlue, fontSize: 16),
                      children: [
                        const TextSpan(
                            text: '\u2022 Work on complex problems and '),
                        const TextSpan(
                          text: 'solve new challenges.\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyle(color: kDarkerBlue, fontSize: 16),
                      children: [
                        const TextSpan(text: '\u2022'),
                        const TextSpan(
                          text: ' Creating the best content possible',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: ' by putting myself in the user\'s shoes.',
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
