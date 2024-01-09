import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String _name;
  final Color _color;
  final VoidCallback _onPress;

  CustomButton(this._name, this._color, this._onPress);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPress,
      child: Text(_name),
      style:ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: _color,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )
      ),
    );
  }
}
