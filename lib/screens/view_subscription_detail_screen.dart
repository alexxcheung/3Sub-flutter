import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:three_sub/widgets/add_sub_info.dart';

import 'package:three_sub/widgets/big_navigation_bar.dart';

class ViewSubscriptionDetailScreen extends StatelessWidget {
  final kTopBoxBigDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0x80FFFFFF),
          blurRadius: 8,
          spreadRadius: 2,
          offset: Offset(-6, -6)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kBottomBigBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0xB3D1CDC7),
          blurRadius: 8,
          spreadRadius: 2,
          offset: Offset(8, 8)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kTopBoxRegularDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0x80FFFFFF),
          blurRadius: 6,
          spreadRadius: 0.5,
          offset: Offset(-3, -3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kBottomRegularBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0xB3D1CDC7),
          blurRadius: 6,
          spreadRadius: 0.5,
          offset: Offset(3, 3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: BigTitleNavigationBar("View Subscription"),
            ),
            body: Material(
              color: Theme.of(context).backgroundColor,
              child: Column(
                children: <Widget>[
                  // Card
                  Padding(
                    padding: const EdgeInsets.fromLTRB(31, 15, 31, 15),
                    child: Container(
                      decoration: kTopBoxBigDropShadow,
                      child: Container(
                        decoration: kBottomBigBoxDropShadow,
                        child: Container(
                          height: 500, // To be Calculated
                          decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("Next Bill: 31 March 2020",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Avenir Next",
                                        fontWeight: FontWeight.w200,
                                        color: Color(0xFF4F4F4F))),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: AddSubInfoView(),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        width: 125,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            color: Color(0xCCF6F4F4),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0xCCFFFFFF)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Center(child: Text("Monthly"))),
                                    Container(
                                        width: 125,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            color: Color(0xCCF6F4F4),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0xCCFFFFFF)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Center(child: Text("USD 7.99"))),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        width: 40,
                                        height: 40,
                                        child: FittedBox(
                                            fit: BoxFit.fill,
                                            child:
                                                Icon(FontAwesomeIcons.bell))),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Automatic Renewal"),
                                          SizedBox(height: 10),
                                          Text("Remind 1 day before bill date"),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: Container(
                      // color: Colors.yellow,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: kBottomRegularBoxDropShadow,
                            child: Container(
                              decoration: kTopBoxRegularDropShadow,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                width: 145,
                                height: 50,
                                child: Center(child: Text("Remove", style: TextStyle(color: Colors.red)),),
                              ),
                            ),
                          ),
                          Container(
                            decoration: kBottomRegularBoxDropShadow,
                            child: Container(
                              decoration: kTopBoxRegularDropShadow,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                width: 145,
                                height: 50,
                                child: Center(child: Text("Edit")),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
