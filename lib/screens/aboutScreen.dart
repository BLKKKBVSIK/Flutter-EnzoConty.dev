import 'package:flutter/material.dart';

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
            padding: EdgeInsets.symmetric(horizontal: containerSize * 0.1),
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 900,
                      width: containerSize * 0.50,
                      color: Colors.pink,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 900,
                      width: containerSize * 0.30,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          );
        }
      },
    );
  }
}
