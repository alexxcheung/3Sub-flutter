import 'package:flutter/material.dart';

class AddSubInfoView extends StatelessWidget {
  const AddSubInfoView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(
          height: 60,
          width: 60,
          image: AssetImage("assets/netflixIcon.png"),
        ),
        SizedBox(width: 32),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Netflix", style: Theme.of(context).textTheme.title),
            SizedBox(
              height: 10,
            ),
            Text(
              "Entertainment",
              style: Theme.of(context).textTheme.body2,
            ),
          ],
        ),
      ],
    );
  }
}
