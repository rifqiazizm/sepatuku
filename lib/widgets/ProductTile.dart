import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, bottom: 30, right: 30),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/shoes2.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: secondTextStyle.copyWith(fontSize: 12),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ), 
                SizedBox(
                  height: 6,
                ), 
                Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ), // Text
              ],
            ),
          )
        ],
      ),
    );
  }
}
