import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';

class SkillsBlock extends StatefulWidget {
  @override
  _SkillsBlockState createState() => _SkillsBlockState();
}

class _SkillsBlockState extends State<SkillsBlock> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: const BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Skills",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        skillStickChart("Front-end", 0.70, Colors.green),
                        skillStickChart("Back-end", 0.60, kGreen),
                        skillStickChart("Databases", 0.55, kGreen),
                        skillStickChart("Mobile Apps", 0.70, Colors.green),
                        skillStickChart("Sys Admin", 0.40, Colors.yellow),
                        skillStickChart(
                            "Reverse engineering", 0.35, Colors.red),
                        skillStickChart("API", 0.65, kGreen),
                        skillStickChart("Team Work", 0.60, kGreen),
                        const Text(
                          "...and much more.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Click here to get the complete list",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget skillStickChart(String skillName, double skillAmount, Color chartColor) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          skillName,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 21),
        child: Container(
          height: 16,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                widthFactor: skillAmount,
                child: Container(
                  decoration: BoxDecoration(
                    color: chartColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
