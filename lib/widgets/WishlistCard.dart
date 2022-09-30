import 'package:flutter/material.dart';
import '../theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ), // EdgeInsets.only
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ), // EdgeInsets.only
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/shoes2.png',
                width: 60,
              )),
          const SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  'Terrex Urban Low',
                  style: primTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
              ), // Text
                Text(
                  '\$143,98',
                  style: priceTextStyle,
              ), // Text
              ],
            ),// Column
          ), // Expanded
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34,
          ), // Image.asset
        ],
      ),
    );
  }
}
