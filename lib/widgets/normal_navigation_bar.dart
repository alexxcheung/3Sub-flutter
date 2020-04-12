import 'package:flutter/material.dart';


class NormalNavigationBar extends StatelessWidget {
  const NormalNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
            elevation: 0,
            backgroundColor: Theme.of(context).backgroundColor,
            flexibleSpace: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text("Back",
                          style: Theme.of(context).textTheme.body2),
                      onPressed: () {},
                    ),
                    Text(
                      "Add Subscription",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    FlatButton(
                      child: Text("Save",
                          style: Theme.of(context).textTheme.body2),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          
        
    );
  }
}