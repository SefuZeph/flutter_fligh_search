import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterflighsearch/widget/multicity_input.dart';
import 'package:flutterflighsearch/widget/price_tab.dart';

class ContentCard extends StatefulWidget {
  @override
  _ContentCardState createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  bool showInput = true;

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 40,
      margin: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        child: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return Column(
              children: <Widget>[
                _buildTabBar(),
                _buildContainer(viewportConstraints)
              ],
            );
          },
        ),
        length: 3,
      ),
    );
  }

  Widget _buildTabBar({bool showFirstOption}) {
    return Stack(
      children: <Widget>[
        new Positioned.fill(
          top: null,
          child: new Container(
            height: 2.0,
            color: new Color(0xFFEEEEEE),
          ),
        ),
        new TabBar(
          tabs: [
            Tab(text: "Flight"),
            Tab(text: "Train"),
            Tab(text: "Bus"),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        )
      ],
    );
  }

  Widget _buildContainer(BoxConstraints viewportConstraints) {
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: viewportConstraints.maxHeight - 48.0),
          child: IntrinsicHeight(
            child: showInput
                ? _buildMulticityTab()
                : PriceTab(
                    height: viewportConstraints.maxHeight - 48.0,
                  ),
          ),
        ),
      ),
    );
  }

  // Add floating action button
  Widget _buildMulticityTab() {
    return Column(
      children: <Widget>[
        MulticityInput(),
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
          child: FloatingActionButton(
            onPressed: () => setState(() => showInput = false),
            child: Icon(
              Icons.timeline,
              size: 36.0,
            ),
          ),
        )
      ],
    );
  }
}
