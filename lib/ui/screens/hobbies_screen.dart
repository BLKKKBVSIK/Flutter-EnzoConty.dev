// ignore: avoid_web_libraries_in_flutter
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/ui/widgets/iframe_card.dart';

class HobbiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  horizontal: constraints.maxWidth * 0.1, vertical: 48),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IframeCard(
                            "tracktvFrame",
                            "https://widgets.trakt.tv/users/4b9a65aa470984709b128e582d6270e5/profile/card",
                            "Movies, TV Shows, Anime",
                            "I watch a lot of them. Its definitively one of my passion",
                            "#Netflix #SeriesAddict"),
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: FittedBox(
                            child: Container(
                              color: Colors.grey,
                              width: 2,
                              height: 620,
                            ),
                          ),
                        ),
                        const IframeCard(
                            "instaFrame",
                            "https://www.instagram.com/p/BqA6fcql3sR/embed/",
                            "Photography",
                            "I like taking photos, unfortunately I'm not that good at it.",
                            "#Spotify #Youtube #KanyeWest"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          height: 2,
                          width: constraints.maxWidth,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 24.0),
                        child: Text(
                          "AND",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          height: 2,
                          width: constraints.maxWidth,
                        ),
                      ),
                    ],
                  ),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IframeCard(
                            "spotifyFrame",
                            "https://open.spotify.com/embed?uri=spotify%3Aplaylist%3A4EbONo5HSbBnQ8KUpIxtMU",
                            "Music",
                            "Anywhere and anytime, I listen to music.",
                            "#CanonEOS200D #NoFilter"),
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: FittedBox(
                            child: Container(
                              color: Colors.grey,
                              width: 2,
                              height: 620,
                            ),
                          ),
                        ),
                        Container(
                          height: 500.0,
                          width: 500.0,
                        )
                      ],
                    ),
                  ),
                ],
              ));
        }
      },
    );
  }
}
