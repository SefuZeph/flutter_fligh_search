import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'air_asia_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[AirAsiaBar(height: 210)],
      ),
    );
  }
}
