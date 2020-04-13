import 'package:flutter/material.dart';
import 'package:three_sub/screens/view_subscription_detail_screen.dart';

class SubbedCard extends StatelessWidget {
  final kGradientBorderBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.white, Color(0xFFFF9900), Color(0xFFFF0000)],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ),
    border: Border.all(
      color: Colors.white12,
      width: 0.89,
    ),
    borderRadius: BorderRadius.circular(10),
  );

  final kTopBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0x80FFFFFF),
          blurRadius: 14,
          spreadRadius: 3,
          offset: Offset(-5, -5)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kBottomBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0xB3D1CDC7),
          blurRadius: 14,
          spreadRadius: 3,
          offset: Offset(5, 5)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  ViewSubscriptionDetailScreen()),
        );
      },
      child: Container(
        decoration: kTopBoxDropShadow,
        child: Container(
          decoration: kBottomBoxDropShadow,
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              // For Gradient
              decoration: kGradientBorderBoxDecoration,

              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/spotify.png"),
                          width: 40,
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 1),
                              Text("Monthly",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300)),
                              SizedBox(height: 10),
                              Text("HKD 48",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Spotify Limited",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w400)),
                    ),
                    Divider(),
                    Text("Next Bill",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                    Text("31 Mar 2020",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
