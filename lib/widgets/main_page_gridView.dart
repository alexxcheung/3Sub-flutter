import 'package:flutter/material.dart';

import 'subbed_card.dart';

class MainPageGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GridView.count(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        primary: false,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        crossAxisCount: 2,
        children: <Widget>[
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
          Container(child: SubbedCard()),
        ],
      ),
    );
  }
}
