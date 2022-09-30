import 'package:flutter/material.dart';
import '../widgets/WishlistCard.dart';
import '../theme.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bgColor1,
      centerTitle: true,
      title: Text(
        'Favorite Shoes',
      ), // Text
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  Widget emptyWishlist() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Love.png',
              width: 74,
              height: 62,
            ),
            SizedBox(
              height: 23,
            ), // SizedBox
            Text(
                'You don\'t have dream shoes?',
              style: primTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ), // SizedBox
            Text(
              'Let\'s find your favorite shoes',
              style: secondTextStyle,
            ), // Text
            SizedBox(
              height: 20,
            ), // SizedBox
            Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 24,
                ), // EdgeInsets.symmetric
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                child: Text(
                  'Explore Store',
                  style: primTextStyle.copyWith(fontSize: 16,fontWeight: medium),
              ), 
            ), 
            ), 

          ],
        ),
      ),
    );
  }

  Widget content() => Expanded(
    child: Container(
      color: bgColor3,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          WishlistCard(),
          WishlistCard(),
          WishlistCard(),
        ],
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content()
      ],
    );
  }
}
