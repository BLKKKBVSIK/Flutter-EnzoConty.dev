import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/widgets/enjoyBlock.dart';
import 'package:flutter_enzoconty/widgets/githubResume.dart';
import 'package:flutter_enzoconty/widgets/introduce.dart';
import 'package:flutter_enzoconty/widgets/skillsBlock.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Introduce(containerSize * 0.50),
                        GithubResume(containerSize * 0.50),
                      ],
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SkillsBlock(
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                EnjoyBlock(),
              ],
            ),
          );
        }
      },
    );
  }
}
