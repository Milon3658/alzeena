import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SubCategoryCard extends StatelessWidget {
  String title;
  String image;

  SubCategoryCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
              height: 80,
              width: 80,
              image: AssetImage(image),
            ),
          ),
        ),
        const Gap(5),
        Text(title)
      ],
    );
  }
}
