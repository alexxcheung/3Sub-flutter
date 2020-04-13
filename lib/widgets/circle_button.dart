import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback _onTap;
  final String _buttonType;
  final bool _isToggled;

  CircleButton(this._buttonType, this._onTap, this._isToggled);

  Widget _getIcon(String _buttonType) {
    if (_buttonType == "search") {
      return Icon(Icons.search);
    } else if (_buttonType == "add") {
      return Icon(Icons.add);
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _isToggled
          ? BoxDecoration(
              boxShadow: [
                BoxShadow(color: Color(0x80454545),
                blurRadius: 2.0,
                spreadRadius: -0.5,
                offset: Offset(-2,-2)),
                BoxShadow(
                    color: Color(0x80FFFFFF),
                    blurRadius: 2.0,
                    spreadRadius: -0.5,
                    offset: Offset(2, 2)),

              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )
          : BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0x80FFFFFF),
                    blurRadius: 2.0,
                    spreadRadius: 0.5,
                    offset: Offset(-2, -2)),
                BoxShadow(
                    color: Color(0x80D1CDC7),
                    blurRadius: 2.0,
                    spreadRadius: 0.5,
                    offset: Offset(2, 2)),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
      child: Container(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: (_isToggled
                ? Color(0xFFCECECE)
                : Theme.of(context).backgroundColor),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: IconButton(
            icon: _getIcon(this._buttonType),
            // focusColor: Colors.white,
            color: (_isToggled ? Colors.white : Color(0xFFCECECE)),
            onPressed: _onTap,
          ),
        ),
      ),
    );
  }
}
