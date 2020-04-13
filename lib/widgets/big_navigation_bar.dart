import 'package:flutter/material.dart';

class BigTitleNavigationBar extends StatelessWidget {
  final String _title;

  BigTitleNavigationBar(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
          elevation: 0,
          leading: Container(),
          flexibleSpace: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 40, 0, 0),
                child: Text(_title,
                    style: Theme.of(context).textTheme.headline),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close",
                        style: Theme.of(context).textTheme.button),
                  )),
            ],
          ),
          // backgroundColor: Colors.red,
          backgroundColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}