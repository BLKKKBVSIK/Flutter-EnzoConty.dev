import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui' as ui;

class IframeCard extends StatefulWidget {
  final String url;
  final String firstLine;
  final String secondLine;
  final String thirdLine;
  final String frameName;

  const IframeCard(this.frameName, this.url, this.firstLine, this.secondLine, this.thirdLine,
      {Key key})
      : super(key: key);

  @override
  _IframeCardState createState() => _IframeCardState();
}

class _IframeCardState extends State<IframeCard> {
  Widget _iframeWidget;

  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();

    _iframeElement.height = '500';
    _iframeElement.width = '500';

    _iframeElement.src = widget.url;
    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      widget.frameName,
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: widget.frameName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 500,
              child: _iframeWidget,
            ),
            Container(
              width: 500,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.firstLine),
                  Text(widget.secondLine),
                  Text(
                    widget.thirdLine,
                    style: TextStyle(color: Colors.blue[300]),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
