import 'package:alzeena/Core/AppColors.dart';
import 'package:flutter/cupertino.dart';

class NewCollectionBannar extends StatelessWidget {
  const NewCollectionBannar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
