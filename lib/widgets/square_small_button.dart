import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SmallSquareButton extends StatelessWidget {
  final VoidCallback _onTap;
  final String _buttonType;

  SmallSquareButton(this._buttonType, this._onTap);

  Widget _getIcon(String _buttonType) {
    if (_buttonType == "currency") {
      return Icon(FontAwesomeIcons.dollarSign);
    } 
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0x80FFFFFF),
              blurRadius: 2.0,
              spreadRadius: 0.5,
              offset: Offset(-2, -2)),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0x80D1CDC7),
                blurRadius: 2.0,
                spreadRadius: 0.5,
                offset: Offset(2, 2)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: IconButton(
            icon: _getIcon(this._buttonType),
            focusColor: Colors.white,
            color: Color(0xFFCECECE),
            onPressed: _onTap,
          ),
        ),
      ),
    );
  }
}
