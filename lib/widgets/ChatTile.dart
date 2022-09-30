import 'package:flutter/material.dart';
import '../theme.dart';


class ChatTile extends StatelessWidget {
  const ChatTile({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/chat'),
      child: Container(
        margin: const EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/Logo.png',
                  width: 54,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      'Shoe Store',
                      style: primTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ), // Text
                    Text(
                      'Good night, This item is on...',
                      style: secondTextStyle.copyWith(fontWeight: light),
                      overflow: TextOverflow.ellipsis,
                    ),// Text
                  ],),
                )
              ],
            ),
            const SizedBox(height: 12,),
            Divider(thickness: 1,color: Color(0xff2B2939),),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
