import 'package:alzeena/Core/AppColors.dart';
import 'package:alzeena/Core/Links.dart';
import 'package:alzeena/Widgets/CategoryCard.dart';
import 'package:alzeena/Widgets/HomePageCarousel.dart';
import 'package:alzeena/Widgets/SearchField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            const Searchfield(),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Flash sale',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            const HomePageCarousel(),
            const Gap(10),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 18),
                )),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  title: 'Mens',
                  image: mensImage,
                ),
                CategoryCard(title: 'Women', image: mensImage),
                CategoryCard(title: 'Kids', image: mensImage),
              ],
            ),
            const Gap(10),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sub-category",
                  style: TextStyle(fontSize: 18),
                )),
            const Gap(10),
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
