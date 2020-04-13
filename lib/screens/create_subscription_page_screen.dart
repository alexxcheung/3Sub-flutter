import "package:flutter/material.dart";
import 'package:three_sub/widgets/normal_navigation_bar.dart';

class CreateSubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: NormalNavigationBar("Create Subscription", () {
                Navigator.pop(context);
              }, () {
                print("saved");
              }),
            ),
            body: Material(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 31),
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget> [
                      Container(color: Colors.white, width: 100, height: 100),
                      Column(children: <Widget>[
                        Text("selected Category"),
                      ],)
                    ])
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
