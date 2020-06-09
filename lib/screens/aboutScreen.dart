import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/widgets/githubResume.dart';
import 'package:flutter_enzoconty/widgets/introduce.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerSize = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 770) {
          return Container(
            width: 600,
            height: 900,
            color: Colors.blue,
          );
        } else {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: containerSize * 0.1, vertical: 48),
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  children: [
                    Introduce(containerSize * 0.50),
                    GithubResume(containerSize * 0.50),
                    Container(
                      height: 300,
                      width: containerSize * 0.50,
                      color: Colors.purple,
                    )
                  ],
                ),
                Flexible(
                  child: Column(
                    children: [
                      Container(
                        height: 600,
                        width: containerSize * 0.30,
                        color: Colors.red,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
