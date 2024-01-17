import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNetwork extends StatelessWidget {
  final String _nameIcon;
  final VoidCallback _doSession;

  const ButtonNetwork(this._nameIcon, this._doSession, {super.key});

  @override
  Widget build (BuildContext context) {
    return Expanded(child: InkWell(
      onTap: _doSession,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff808080), width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: SvgPicture.asset(_nameIcon, width: 30,),
        ),
      ),
    )
    );
  }

}