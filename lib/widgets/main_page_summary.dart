import 'package:flutter/material.dart';

import 'main_page_summary_cell.dart';

class MainPageSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 105.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0x80D1CDC7),
                blurRadius: 6.0,
                spreadRadius: 0.5,
                offset: Offset(3, 3)),
            BoxShadow(
                color: Color(0x80FFFFFF),
                blurRadius: 6.0,
                spreadRadius: 0.5,
                offset: Offset(-3, -3)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            border: Border.all(color: Color(0x33FFFFFF), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainPageSummaryCell("Weekly", "30"),
              MainPageSummaryCell("Monthly", "300"),
              MainPageSummaryCell("Yearly", "3600"),
            ],
          ),
        ),
      ),
    );
  }
}
