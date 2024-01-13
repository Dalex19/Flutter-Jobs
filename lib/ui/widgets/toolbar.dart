
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  final String _title, _description;

  Toolbar(this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_title, 
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        ),
        SizedBox(height: 5),
        Text(_description,
          style: TextStyle(
            fontSize: 18,
            //foregroundColor: Colors.black12
            color: Colors.black
          ),
        )
      ],
    );
  }

}