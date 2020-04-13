import 'package:flutter/material.dart';


class NormalNavigationBar extends StatelessWidget {
  final String _title;
  final VoidCallback _backOnTap;
  final VoidCallback _saveOnTap;

  NormalNavigationBar(this._title, this._backOnTap, this._saveOnTap);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
            elevation: 0,
            leading: Container(),
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
                      onPressed: _backOnTap,
                    ),
                    Text(
                      _title,
                      style: TextStyle(fontSize: 20, fontFamily: "Helvetica Neue", fontWeight: FontWeight.w600),
                    ),
                    FlatButton(
                      child: Text("Save",
                          style: Theme.of(context).textTheme.body2),
                      onPressed: _saveOnTap,
                    ),
                  ],
                ),
              ),
            ),
          
        
    );
  }
}