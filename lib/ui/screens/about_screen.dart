import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/ui/widgets/enjoy_block.dart';
import 'package:flutter_enzoconty/ui/widgets/github_resume.dart';
import 'package:flutter_enzoconty/ui/widgets/introduce.dart';
import 'package:flutter_enzoconty/ui/widgets/skills_block.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double containerSize = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 770) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Introduce(),
                githubBlock(),
                resumeBlock(),
                SkillsBlock(),
                EnjoyBlock(),
              ],
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: containerSize * .06, vertical: 40),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .58,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Introduce(),
                            GithubResume(),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .30,
                        child: Column(
                          children: [
                            Expanded(child: SkillsBlock()),
                          ],
                        ),
                      ),
                    ],
                  ),
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
