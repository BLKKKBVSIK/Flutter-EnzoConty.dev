import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/widgets/enjoy_block.dart';
import 'package:flutter_enzoconty/widgets/github_resume.dart';
import 'package:flutter_enzoconty/widgets/introduce.dart';
import 'package:flutter_enzoconty/widgets/skills_block.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerSize = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 770) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Introduce(containerSize * 2),
                  githubBlock(containerSize * 2.5), // TODO: Meh, weak tweak.
                  resumeBlock(containerSize * 2.5), // TODO: Meh, weak tweak.
                  SkillsBlock(),
                  EnjoyBlock(),

                ],
              ),
            ),
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
                          SkillsBlock(),
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
