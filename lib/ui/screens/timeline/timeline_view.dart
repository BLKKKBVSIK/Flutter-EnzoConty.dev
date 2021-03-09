import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';
import 'package:flutter_enzoconty/ui/widgets/timeline_node_object.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double containerSize = MediaQuery.of(context).size.width;

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: containerSize * .06, vertical: 40),
      color: Colors.white,
      child: Column(
        children: [
          Timeline(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            theme: TimelineThemeData(color: kDarkBlue),
            children: [
              TimelineNode(
                indicator: Card(
                  color: kDarkBlue,
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Start',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                startConnector: DashedLineConnector(),
                endConnector: SolidLineConnector(),
              ),
              TimelineNodeObject(
                  reverseContent: false,
                  date: "JULY 2015",
                  mainDesc:
                      "Completed a A-Level in engineering science with distinction",
                  secondDesc: "Les Iris high school, Lormont (France).",
                  hasButton: true,
                  icon: FontAwesomeIcons.graduationCap,
                  buttonLabel: "See my certificate",
                  url: "https://enzoconty.dev/.documents/sti2d.pdf"),
              TimelineNodeObject(
                  reverseContent: true,
                  date: "SEPTEMBER 2015",
                  mainDesc: "Beginning first year of Epitech school",
                  secondDesc: "Epitech school, Bordeaux (France).",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              createCardYearNode(year: "2016"),
              TimelineNodeObject(
                  reverseContent: false,
                  date: "JULY 2016",
                  mainDesc: "Beginning second year of Epitech school",
                  secondDesc: "Epitech school, Bordeaux (France).",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              TimelineNodeObject(
                reverseContent: true,
                date: "AUGUST 2016 - DECEMBER 2016",
                mainDesc:
                    "Intern at Etiam.\nImplementation of a new graphical charter of an application dedicated to tele-expertise.",
                secondDesc: "Rennes & Bègles (France), 4months.",
                hasButton: true,
                icon: FontAwesomeIcons.code,
                buttonLabel: "See my report",
                url: "https://enzoconty.dev/.documents/stageTek2.pdf",
              ),
              createCardYearNode(year: "2017"),
              TimelineNodeObject(
                  reverseContent: false,
                  date: "JULY 2017",
                  mainDesc: "Beginning thirth year of Epitech school",
                  secondDesc: "Epitech school, Bordeaux (France).",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              createCardYearNode(year: "2018"),
              TimelineNodeObject(
                reverseContent: true,
                date: "APRIL 2018 - AUGUST 2018",
                mainDesc:
                    "Intern at JePilote\nAdding new features for an accountant software company",
                secondDesc: "Bordeaux (France), 4months.",
                hasButton: true,
                icon: FontAwesomeIcons.code,
                buttonLabel: "See my report",
                url: "https://enzoconty.dev/.documents/stageTek3.pdf",
              ),
              TimelineNodeObject(
                reverseContent: false,
                date: "JULY 2018",
                mainDesc: "Graduate from bachelor degree",
                secondDesc: "Epitech school, Bordeaux (France).",
                hasButton: true,
                icon: FontAwesomeIcons.code,
                buttonLabel: "See my certificate",
                url: "https://enzoconty.dev/.documents/bachelor.pdf",
              ),
              TimelineNodeObject(
                  reverseContent: true,
                  date: "JULY 2018",
                  mainDesc: "Beginning fourth year of Epitech school",
                  secondDesc: "Epitech school, Paris (France).",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              createCardYearNode(year: "2019"),
              TimelineNodeObject(
                reverseContent: false,
                date: "SEPTEMBER 2018 - JUNE 2019",
                mainDesc: "Graduate from СПбГУТ",
                secondDesc:
                    "Bonch-Bruevich Saint-Petersburg State University of Telecommunications, Saint-Petersburg (Russia).",
                hasButton: true,
                icon: FontAwesomeIcons.map,
                buttonLabel: "See my certificate",
                url: "https://enzoconty.dev/.documents/bonch.pdf",
              ),
              TimelineNodeObject(
                  reverseContent: true,
                  date: "JULY 2019",
                  mainDesc: "Beginning fifth year of Epitech school",
                  secondDesc: "Epitech school, Paris (France).",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              TimelineNodeObject(
                  reverseContent: false,
                  date: "SEPTEMBER 2019 - NOW",
                  mainDesc: "Full-time Freelance",
                  secondDesc: "working as a freelance through Comet and Malt.",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              TimelineNodeObject(
                reverseContent: true,
                date: "JULY 2020 - SEPTEMBER 2020",
                mainDesc:
                    "Intern at Livearts\nCreating mobile applications with Flutter and Dart.",
                secondDesc: "Full remote.",
                hasButton: true,
                icon: FontAwesomeIcons.code,
                buttonLabel: "See my report",
                url: "https://enzoconty.dev/.documents/stageTek5.pdf",
              ),
              TimelineNodeObject(
                  reverseContent: false,
                  date: "NOVEMBER 2020 - NOW",
                  mainDesc: "Beginning preparatory course for PhD in СПбГУТ",
                  secondDesc:
                      "Bonch-Bruevich Saint-Petersburg State University of Telecommunications, Saint-Petersburg (Russia).",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              TimelineNodeObject(
                  reverseContent: true,
                  date: "DECEMBER 2020",
                  mainDesc: "Graduate from master degree",
                  secondDesc: "Epitech school, Paris (France)",
                  hasButton: false,
                  icon: FontAwesomeIcons.code),
              createCardYearNode(year: "2021"),
              SizedBox(height: 50, child: DashedLineConnector()),
              createCardYearNode(year: "Future"),
            ],
          )
        ],
      ),
    );
  }
}

Widget createCardYearNode({String year}) {
  return TimelineNode(
    indicator: Card(
      color: kGreen,
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          '$year',
          style: TextStyle(
              fontFamily: "SanFrancisco", fontSize: 12, color: Colors.white),
        ),
      ),
    ),
    startConnector: DashedLineConnector(),
    endConnector: SolidLineConnector(),
  );
}
