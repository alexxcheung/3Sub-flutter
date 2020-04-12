import 'package:flutter/material.dart';

class MainPageSummaryCell extends StatelessWidget {
  final String title;
  final String amount;

  MainPageSummaryCell(this.title, this.amount);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 74,
          // color: Colors.blue,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.body1,
              ),
              Text(
                "\$" + amount,
                style: Theme.of(context).textTheme.body2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
