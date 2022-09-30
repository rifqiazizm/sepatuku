import 'package:flutter/material.dart';
import '../theme.dart';


class ChatBubble extends StatelessWidget {
  const ChatBubble({ Key key,this.text = '',this.isSender=false }) : super(key: key);


  final String text;
  final bool isSender;

  Widget productPreview(){
  return Container(
    width: 230,
    height: 155,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(isSender?12:0),
        topRight: Radius.circular(isSender?0:12),
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
     ), // BorderRadius.only
      color: isSender? bgColor5: bgColor4,
    ),// BoxDecoration
  ); 
}


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.5
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(isSender ?  0 : 12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    ),
                    color: isSender ? bgColor5 : bgColor4
                  ),
                child: Text(
                  'Hi, This item is still available?',
                  style: primTextStyle,
                )
              ),
            ), 
          ],
        ), 
    );
  }
}