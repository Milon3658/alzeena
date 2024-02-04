import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomePageCarousel extends StatefulWidget {
  const HomePageCarousel({super.key});

  @override
  State<HomePageCarousel> createState() => _HomePageCarouselState();
}

class _HomePageCarouselState extends State<HomePageCarousel> {
  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        height: 200.0,
        showIndicator: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        slideIndicator: const CircularSlideIndicator(),
      ),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                    color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Center(child: Text('text $i', style: const TextStyle(fontSize: 16.0),))
            );
          },
        );
      }).toList(),
    );
  }
}
