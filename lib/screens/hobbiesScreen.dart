import 'package:flutter/material.dart';

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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.yellow,
                        height: 500.0,
                        width: 500.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: FittedBox(
                          child: Container(
                            color: Colors.grey,
                            width: 2,
                            height: 500,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        height: 500.0,
                        width: 500.0,
                      )
                    ],
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("AND"),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.yellow,
                        height: 500.0,
                        width: 500.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: FittedBox(
                          child: Container(
                            color: Colors.grey,
                            width: 2,
                            height: 500,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        height: 500.0,
                        width: 500.0,
                      )
                    ],
                  ),
                ],
              ));
        }
      },
    );
  }
}
