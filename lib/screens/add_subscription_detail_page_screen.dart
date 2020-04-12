import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:three_sub/widgets/add_sub_details.dart';

import 'package:three_sub/widgets/add_sub_info.dart';
import 'package:three_sub/widgets/normal_navigation_bar.dart';
import 'package:three_sub/widgets/square_small_button.dart';

class AddSubscriptionDetailScreen extends StatelessWidget {
  // const AddSubscriptionDetailScreen({Key key}) : super(key: key);

  int _index = 0;

  final kTopBoxInnerDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0x80FFFFFF),
          blurRadius: 6,
          spreadRadius: 0.5,
          offset: Offset(-3, -3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kBottomBoxInnerDropShadow = BoxDecoration(
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
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: NormalNavigationBar(),
        ),
        body: Material(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: <Widget>[
              Container(
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: AddSubInfoView(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: SmallSquareButton(
                          "currency", () => print("Currency Changed")),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 10),

              // Horizontal ScrollView
              Container(
                height: 140,
                // color: Colors.red,
                child: Scrollbar(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    // itemExtent: 150,
                    // controller: PageController(viewportFraction: 0.7),
                    // onPageChanged: (int index) => setState(() => _index = index),
                    itemBuilder: (_, i) {
                      // return Transform.scale(
                      //   scale: i == _index ? 1 : 0.9,

                      return Container(
                        width: 150,
                        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: Container(
                          decoration: kBottomBoxInnerDropShadow,
                          child: Container(
                            decoration: kTopBoxInnerDropShadow,
                            child: Container(
                              //Card
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              // shape: RoundedRectangleBorder(
                              // borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "Card ${i + 1}",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              // ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 10),

              Expanded(
                child: Container(
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      AddSubDetailsCell("Automatic Renewal", "Checkbox"),
                      AddSubDetailsCell("Set Bill Date", "Select Date"),
                      AddSubDetailsCell("Set Reminder", "Never")
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
