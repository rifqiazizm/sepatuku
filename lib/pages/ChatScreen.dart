import 'package:flutter/material.dart';
import '../widgets/ChatTile.dart';

import '../theme.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  Widget header() => AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false, // ngilangin arrow back di kiri atas
      );

  Widget emptyChat() => Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Headset.png',
                width: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style: primTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Text(
                'You have never doneatransaction',
                style: secondTextStyle,
              ), // Text
              SizedBox(
                height: 20,
              ), // SizedBox
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      backgroundColor: primaryColor),
                  onPressed: () {},
                  child: Text('Explore Store',
                      style: primTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      )), // Text
                ), // TextButton
              ), // Container
            ],
          ),
        ),
      );

  Widget content() => Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              ChatTile()
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
