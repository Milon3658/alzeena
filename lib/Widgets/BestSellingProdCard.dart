import 'package:alzeena/Core/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BestSellingProdCard extends StatefulWidget {
  String title;
  String image;
  String price;
  String availability;

  BestSellingProdCard(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.availability});

  @override
  State<BestSellingProdCard> createState() => _BestSellingProdCardState();
}

class _BestSellingProdCardState extends State<BestSellingProdCard> {
  bool isFavorite = false;

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
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image(
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage(widget.image)),
          ),
          const Gap(5),
          Center(
              child: Text(
            widget.title,
            style: const TextStyle(fontSize: 18),
          )),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      widget.availability,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    isFavorite
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = false;
                              });
                            },
                            icon: Icon(
                              Icons.star,
                              color: primaryColor,
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = true;
                              });
                            },
                            icon: Icon(
                              Icons.star_outline,
                              color: primaryColor,
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: isFavorite
                  ? InkWell(
                      onTap: () {},
                      child: Container(
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[300]!,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.blueGrey),
                          ))),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            decrease();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.remove,
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
                            increase();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
        ],
      ),
    );
  }
}
