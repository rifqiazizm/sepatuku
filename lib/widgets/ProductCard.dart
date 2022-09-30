import 'package:flutter/material.dart';
import '../theme.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: const EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffECEDEF)
      ),
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Image.asset(
            'assets/shoes1.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  'Hiking',
                  style: secondTextStyle.copyWith(
                    fontSize: 12,
                  ),
              ), 
                SizedBox(
                  height: 6,
              ),
              Text('COURT VISION 2.0', style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                  height: 6,
              ),
              Text(
                '\$58,67',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,)
              ), // Text
              ],
            ), 
          ), 

        ],
      ),
    );
  }
}