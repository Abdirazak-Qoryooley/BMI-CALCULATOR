import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rawbuttons extends StatelessWidget {
  final IconData icons;
  final Function()? onpressed;

  rawbuttons({
    Key? key,
    required this.icons,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      fillColor: Colors.grey,
      child: Icon(icons),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 45, height: 45),
    );
  }
}
