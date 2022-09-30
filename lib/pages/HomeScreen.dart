import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/UserModel.dart';
import '../widgets/ProductCard.dart';
import '../widgets/ProductTile.dart';
import '../theme.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key key }) : super(key: key);

  Widget header(UserModel user) => Container(
    margin: EdgeInsets.only(
      top: defaultMargin,
      left : defaultMargin,
      right: defaultMargin
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, ${user.name}',
                style: primTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold
                ),
              ),
              Text(
                '@${user.username}',
                style: subtitleStyle.copyWith(
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
        Container(
          height: 54,
          width: 54,
        )
      ],
    ),
  );

  Widget categories() => Container(
    margin: EdgeInsets.only(
      top: defaultMargin,
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 30,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: primaryColor
            ),
            child: Text(
              'All Shoes',
              style: primTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium
              )
            ) 
          ,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              border: Border.all(color: subtitleColor)
            ),
            child: Text(
              'Running',
              style: primTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium
              )
            )
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              border: Border.all(color: subtitleColor)
            ),
            child: Text(
              'Training',
              style: primTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium
              )
            ) 
          ,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              border: Border.all(color: subtitleColor)
            ),
            child: Text(
              'Basketball',
              style: primTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium
              )
            ) 
          ,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              border: Border.all(color: subtitleColor)
            ),
            child: Text(
              'Hiking',
              style: primTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium
              )
            ) 
          ,)
        
        ],
      ),
    ),
  );


  Widget productsTitle() => Container(
    margin: const EdgeInsets.only(top: 30,left: 30,right: 30),
    child: Text(
      'Popular Products',
      style: primTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semibold
      ),
    ),
  );

  Widget newArrivalsTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ), // EdgeInsets.only
      child: Text(
        'New Arrivals',
        style: primTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semibold,
        ),
      ), // Text
    ); // Container
  }

  Widget newArrivals(){
    return Container(
      margin: EdgeInsets.only(
        top: 14,
    ), // EdgeInsets.only
      child: Column(
        children:[
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ]
      ), 
    );// Column
  }


  Widget popularProducts(){
    return Container(
      margin: EdgeInsets.only(top: 14),
      padding: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(),
            ProductCard(),
            ProductCard()
          ]
          
      ), // Row
    ), // SingleChildScrollView
  ); // Container
  }


  

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    return ListView(
      children: [
        header(user),
        categories(),
        productsTitle(),
        popularProducts (),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}

