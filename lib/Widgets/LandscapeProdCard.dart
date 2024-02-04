import 'package:alzeena/Core/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LandscapeProdCard extends StatefulWidget {
  String image;
  String title;
  String subtitle;
  String regulerPrice;
  String discountPrice;
  int rating;

  LandscapeProdCard(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.regulerPrice,
      required this.discountPrice,
      required this.rating});

  @override
  State<LandscapeProdCard> createState() => _LandscapeProdCardState();
}

class _LandscapeProdCardState extends State<LandscapeProdCard> {
  int qty = 1;

  void increase() {
    setState(() {
      qty++;
    });
  }

  void decrease() {
    setState(() {
      qty--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 110,
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xffebf8ff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image(
                  width: 100,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.image)),
            ),
            const Gap(5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      for (int x = 1; x <= widget.rating; x++) ...[
                        Icon(
                          Icons.star,
                          size: 20,
                          color: primaryColor,
                        ),
                      ],
                      for (int x = 1; x <= 5 - widget.rating; x++) ...[
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.grey[300],
                        ),
                      ],
                    ],
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      Text(
                        widget.discountPrice,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Gap(10),
                      Text(
                        widget.regulerPrice,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const Gap(10),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      increase();
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    qty.toString(),
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      decrease();
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
