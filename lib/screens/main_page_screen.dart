import 'package:flutter/material.dart';
import 'package:three_sub/widgets/circle_button.dart';
import 'package:three_sub/widgets/main_page_gridView.dart';

import 'package:three_sub/widgets/main_page_summary.dart';
import 'package:three_sub/screens/search_page_screen.dart';

class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  bool _isSearchBarToggled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              elevation: 0,
              // backgroundColor: Colors.red,
              backgroundColor: Theme.of(context).backgroundColor,
              flexibleSpace: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "3Sub",
                        style: TextStyle(
                            fontFamily: "Avenir Next",
                            fontSize: 32,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                ],
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
                          style: Theme.of(context).textTheme.title),
                      Row(
                        children: <Widget>[
                          CircleButton("search", _toggleSearchButton,
                              _isSearchBarToggled),
                          SizedBox(width: 16),
                          CircleButton("add", _tapOnAddButton, false),
                        ],
                      ),
                    ],
                  ),
                ),
                Visibility(
                  // maintainSize: true,
                  // maintainState: true,
                  // maintainAnimation: true,
                  visible: _isSearchBarToggled,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: (_isSearchBarToggled ? 70 : 0),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 31),
                            child: Container(
                              child: Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.transparent,
                                    color: Theme.of(context).backgroundColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x80FFFFFF),
                                        blurRadius: 6,
                                        spreadRadius: -3,
                                        offset: Offset(3, 3),
                                      ),
                                      BoxShadow(
                                          color: Color(0xB3D1CDC7),
                                          blurRadius: 6,
                                          spreadRadius: -3,
                                          offset: Offset(-3, -3)),
                                    ],
                                    border: Border.all(
                                        color: Color(0x33FFFFFF), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  height: 60,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText:
                                            "Search your subscription here",
                                        hintStyle:
                                            Theme.of(context).textTheme.body2,
                                        border: InputBorder.none,
                                      ),
                                      maxLines: 1,
                                    ),
                                  )),
                            ),
                          ),
                        )),
                  ),
                ),
                Expanded(child: MainPageGridView()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Functions
  void _toggleSearchButton() {
    setState(() {
      if (_isSearchBarToggled) {
        _isSearchBarToggled = false;
      } else {
        _isSearchBarToggled = true;
      }
    });
  }

  void _tapOnAddButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => SearchNewSubscriptionScreen()),
      // (Route<dynamic> route) => false,
    );
  }

  final kTextFieldInnerShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color(0x80FFFFFF),
        blurRadius: 6,
        spreadRadius: -3,
        offset: Offset(-3, -3),
      ),
      BoxShadow(
          color: Color(0xB3D1CDC7),
          blurRadius: 6,
          spreadRadius: -3,
          offset: Offset(3, 3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}
