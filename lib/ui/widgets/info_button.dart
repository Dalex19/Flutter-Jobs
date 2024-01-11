import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  String _primaryText, _secondText;
  //FunctionVoid _redirect = FunctionVoid;
  VoidCallback _redirect;

  InfoButton(this._primaryText, this._secondText, this._redirect);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_primaryText),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
                color: Color(0xFF253D57), fontWeight: FontWeight.bold),
          ),
          onPressed: _redirect,
          child: Text(_secondText),
        ),
      ],
    );
  }
}
