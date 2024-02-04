import 'package:flutter/material.dart';

class Brand extends StatelessWidget {

  String image;

  Brand({required this.image});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 50,
        width: 100,
        child: Image(
            fit: BoxFit.cover,
            image: AssetImage(image)),
      ),
    );
  }
}
