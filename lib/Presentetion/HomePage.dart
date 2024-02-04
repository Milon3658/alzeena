import 'package:alzeena/Core/AppColors.dart';
import 'package:alzeena/Core/Links.dart';
import 'package:alzeena/Widgets/Brand.dart';
import 'package:alzeena/Widgets/CategoryCard.dart';
import 'package:alzeena/Widgets/HomePageCarousel.dart';
import 'package:alzeena/Widgets/LandscapeProdCard.dart';
import 'package:alzeena/Widgets/SearchField.dart';
import 'package:alzeena/Widgets/SubCategoryCard.dart';
import 'package:alzeena/Widgets/TitleText.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              const Searchfield(),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleText(title: 'Flash Sale'),
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
              TitleText(title: 'Category'),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    title: 'Mens',
                    image: 'assets/mens.jpeg',
                  ),
                  CategoryCard(title: 'Women', image: 'assets/women.avif'),
                  CategoryCard(title: 'Kids', image: 'assets/kids.jpeg'),
                ],
              ),
              const Gap(10),
              TitleText(title: 'Sub-category'),
              const Gap(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SubCategoryCard(
                        title: 'Hoodie', image: 'assets/hoodie.avif'),
                    SubCategoryCard(
                        title: 'Jacket', image: 'assets/jacket.jpeg'),
                    SubCategoryCard(title: 'Pants', image: 'assets/pants.jpeg'),
                    SubCategoryCard(title: 'Shirt', image: 'assets/shirt.jpeg'),
                    SubCategoryCard(title: 'Tops', image: 'assets/tops.avif'),
                  ],
                ),
              ),
              const Divider(),
              const Gap(10),
              Container(
                height: 110,
                // width: ,
                decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Collection\n is Available",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text('Learn more')
                        ],
                      ),
                      Image(image: AssetImage('assets/kids.jpeg'))
                    ],
                  ),
                ),
              ),
              const Gap(10),
              TitleText(title: 'Top Brands'),
              const Gap(10),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Brand(image: 'assets/brand.jpg'),
                      Brand(image: 'assets/brand.jpg'),
                      Brand(image: 'assets/brand.jpg'),
                      Brand(image: 'assets/brand.jpg'),
                      Brand(image: 'assets/brand.jpg'),
                      Brand(image: 'assets/brand.jpg'),
                    ],
                  )),
              const Gap(10),
              TitleText(title: 'Discount Products'),
              const Gap(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    LandscapeProdCard(
                      image: 'assets/hoodie.avif',
                      title: 'Hoodie',
                      subtitle: 'digital store',
                      regulerPrice: '1200 tk',
                      discountPrice: '450 tk',
                      rating: 3,
                    ),
                    LandscapeProdCard(
                      image: 'assets/tops.avif',
                      title: 'Tops',
                      subtitle: 'tops store',
                      regulerPrice: '300 tk',
                      discountPrice: '150 tk',
                      rating: 3,

                    ),
                  ],
                ),
              ),
              const Gap(100)
            ],
          ),
        ),
      ),
    );
  }
}
