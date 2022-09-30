import 'package:flutter/material.dart';
import '../widgets/ChatBubble.dart';
import '../theme.dart';

class DetailChatScreen extends StatelessWidget {
  const DetailChatScreen({Key key}) : super(key: key);

  Widget header() => PreferredSize(
        child: AppBar(
          backgroundColor: bgColor1,
          centerTitle: false,
          title: Row(
          children:[
            Image.asset(
              'assets/dummyprofile.png',
              width: 50,
          ), // Image.asset
            SizedBox(
              width: 12,
          ), // SizedBox
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  'Shoe Store',
                  style: primTextStyle.copyWith(
                    fontWeight: medium,
                  )
                ), // Text
                Text(
                  'Online',
                  style: secondTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ), 
                  ]
                )
            ]),
          ),

          preferredSize: Size.fromHeight(75),
          );


  Widget productPreview() => Container(
    height: 74,
    width: 225,
    margin: const EdgeInsets.only(bottom: 20),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: bgColor5,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: primaryColor
      )
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(12) ,child: Image.asset('assets/shoes2.png',width: 54,)),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              Text(
                'COURT VISIO...',
                style: primTextStyle,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
            ), // Text
            SizedBox(
                height: 2,
            ), // SizedBox
              Text(
                '\$57,15',
                style: priceTextStyle.copyWith(
                  fontWeight: medium,
                ),
            ),
          ]
        )
          
      ],
    ),

  );

  Widget chatInput () {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
              ),
              decoration: BoxDecoration(
                color: bgColor4,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Typle Message...',
                      hintStyle: subtitleStyle
                    ), // InputDecoration
                  ), 
                ), 
          ),
            ), 
            const SizedBox(width: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
              ),
                onPressed: () {},
                child: Icon(Icons.arrow_forward,color: Colors.white,size: 32,),
              )
          ],),

        ]
      )
    ); 
  }

  Widget content(){
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
    ), // EdgeInsets.symmetric
      children: [
        ChatBubble(
          isSender: true,
          text: 'Hi! , this item is still available',
        ),
        ChatBubble(
          isSender: false,
          text: 'Good night, this item is only available in size 42',
        )
      ]
    ); //ListView
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
    
  }
}
