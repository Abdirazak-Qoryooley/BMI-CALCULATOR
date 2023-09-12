import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female;
}

class reusable_carts extends StatelessWidget {
  final String name;
  final bool selected;
  final Function()? onpressed;

  reusable_carts({required this.name, this.selected = false, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: selected == false ? Color(0xff01D1E33) : Colors.grey,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.mars,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name.toString(),
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
