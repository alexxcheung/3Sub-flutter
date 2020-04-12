import 'package:flutter/material.dart';
import 'package:three_sub/widgets/circle_button.dart';
import 'package:three_sub/widgets/main_page_gridView.dart';

import 'package:three_sub/widgets/main_page_summary.dart';
import 'package:three_sub/screens/search_page_screen.dart';

class MainPageScreen extends StatelessWidget {
  void pushToSearchScreen() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "3Sub",
              style: TextStyle(
                  fontFamily: "Avenir Next", fontSize: 32, color: Colors.grey),
            ),
          ),
        ),
      ),
      body: Material(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: MainPageSummary(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Your Subscriptions",
                      style: Theme.of(context).textTheme.headline),
                  Row(
                    children: <Widget>[
                      CircleButton("search", () => print("Seaerch")),
                      SizedBox(width: 16),
                      CircleButton("add", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SearchNewSubscriptionScreen()),
                          // (Route<dynamic> route) => false,
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: MainPageGridView()),
          ],
        ),
      ),
    );
  }
}
