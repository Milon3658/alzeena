import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  String title;
  String image;

  CategoryCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(8, 6), // Shadow position
          ),
        ]
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
                height: 100,
                width: 120,
                image: AssetImage(image)),
          ),
          Text(title, style: const TextStyle(
            fontSize: 16
          ),)
        ],
      ),
    );
  }
}
