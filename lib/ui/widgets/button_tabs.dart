import 'package:flutter/material.dart';

class ButtonTabs extends StatefulWidget {
  final String title;
  final bool isSelected;

  const ButtonTabs({this.title, this.isSelected});

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
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: widget.isSelected ? selectedColor : Colors.transparent,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                color: widget.isSelected ? Colors.blueAccent : Colors.white,
                fontFamily: 'IndieFlower'),
          ),
        ],
      ),
    );
  }
}
