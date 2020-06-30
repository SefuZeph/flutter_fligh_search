import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AirAsiaBar extends StatelessWidget {
  final double height;

  const AirAsiaBar({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, const Color(0xFFE64C85)],
            ),
          ),
          height: height,
        ),
        new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: new Text('AirAsia'),
        ),
      ],
    );
  }
}
