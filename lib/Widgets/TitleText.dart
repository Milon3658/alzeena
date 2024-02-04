import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {

  String title;

  TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ));
  }
}
