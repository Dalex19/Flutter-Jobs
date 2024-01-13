import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
 final String _primaryText, _secondText;
  final VoidCallback _redirect;

  const InfoButton(this._primaryText, this._secondText, this._redirect);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_primaryText),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
                color: Color.fromARGB(255, 26, 45, 66), fontWeight: FontWeight.bold),
          ),
          onPressed: _redirect,
          child: Text(_secondText),
        ),
      ],
    );
  }
}
