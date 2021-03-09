import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/misc/k_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

class TimelineNodeObject extends StatelessWidget {
  String date;
  String mainDesc;
  String secondDesc;
  bool hasButton;
  String buttonLabel;
  bool reverseContent;
  IconData icon;
  String url;

  TimelineNodeObject(
      {Key key,
      this.date,
      this.mainDesc,
      this.icon,
      this.buttonLabel,
      this.hasButton,
      this.reverseContent,
      this.secondDesc,
      this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            reverseContent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$date',
            style: TextStyle(
              fontFamily: "SanFrancisco",
              fontSize: 12,
              letterSpacing: 1.3,
              color: kGrey,
            ),
          ),
          Text(
            '$mainDesc',
            style: TextStyle(
              height: 1.8,
              fontFamily: "SanFrancisco",
              fontSize: 15,
              color: kGrey,
            ),
            textAlign: reverseContent ? TextAlign.end : TextAlign.start,
          ),
          Text(
            '$secondDesc',
            style: TextStyle(
              fontFamily: "SanFrancisco",
              fontSize: 15,
              color: kGrey,
            ),
            textAlign: reverseContent ? TextAlign.end : TextAlign.start,
          ),
          hasButton
              ? Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: OutlinedButton(
                    onPressed: () async {
                      await launch(url);
                    },
                    style: OutlinedButton.styleFrom(
                        primary: kBlue,
                        side: BorderSide(color: kGreen, width: 1),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                    child: Text(
                      "$buttonLabel",
                      style:
                          TextStyle(color: kGreen, fontWeight: FontWeight.w300),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );

    return TimelineTile(
      contents: reverseContent ? null : content,
      oppositeContents: reverseContent ? content : null,
      node: TimelineNode(
        startConnector: SolidLineConnector(),
        endConnector: SolidLineConnector(),
        indicator: DotIndicator(
          size: 25,
          child: Center(child: FaIcon(icon, color: Colors.white, size: 12.0)),
        ),
      ),
    );
  }
}
