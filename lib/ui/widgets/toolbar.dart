
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  final String _title, _description;

  const Toolbar(this._title, this._description, {super.key});

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
        const SizedBox(height: 5),
        Text(_description,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black
          ),
        )
      ],
    );
  }

}