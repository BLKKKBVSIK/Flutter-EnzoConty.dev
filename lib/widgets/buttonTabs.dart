import 'package:flutter/material.dart';

class ButtonTabs extends StatefulWidget {
  String title;
  bool isSelected;

  ButtonTabs(this.title, this.isSelected);

  @override
  _ButtonTabsState createState() => _ButtonTabsState();
}

class _ButtonTabsState extends State<ButtonTabs> {
  Color selectedColor;

  @override
  void initState() {
    selectedColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: widget.isSelected ? selectedColor : Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Center(
          child: FittedBox(
        child: Text(
          widget.title,
          style: TextStyle(
              color: widget.isSelected ? Colors.blueAccent : Colors.white,
              fontFamily: 'IndieFlower'),
        ),
      )),
    );
  }
}
