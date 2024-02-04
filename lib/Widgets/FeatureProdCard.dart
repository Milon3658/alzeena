import 'package:alzeena/Core/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FeatureProdCard extends StatefulWidget {

  String image;
  String title;
  String price;
  String discountPrice;

  FeatureProdCard({
    required this.image,
    required this.title,
    required this.price,
    required this.discountPrice,
  });

  @override
  State<FeatureProdCard> createState() => _FeatureProdCardState();
}

class _FeatureProdCardState extends State<FeatureProdCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                widget.image,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$ ${widget.price}',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const Gap(10),
                Text(
                  '\$ ${widget.discountPrice}',
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            Text(widget.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Divider(
                color: primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.shopping_cart_outlined, color: primaryColor, size: 20,),
                  const Gap(5),
                  const Text('Add to cart',
                      style: TextStyle(
                        color: Colors.blueGrey,
                      )),
                ],
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
