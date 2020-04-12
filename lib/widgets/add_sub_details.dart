import 'package:flutter/material.dart';
import 'package:three_sub/widgets/add_sub_info.dart';

class AddSubDetailsCell extends StatelessWidget {
  final String _leftItem;
  final String _rightItem;

  AddSubDetailsCell(this._leftItem, this._rightItem);

  // Style
  final kTopBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0x80FFFFFF),
          blurRadius: 6,
          spreadRadius: 0.5,
          offset: Offset(-3, -3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kBottomBoxDropShadow = BoxDecoration(
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Container(
        decoration: kTopBoxDropShadow,
        child: Container(
          decoration: kBottomBoxDropShadow,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(_leftItem),
                  Text(_rightItem, style: Theme.of(context).textTheme.body2,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
