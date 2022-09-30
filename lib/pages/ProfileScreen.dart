import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/models/UserModel.dart';
import '../theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  Widget header(UserModel user) => AppBar(
        backgroundColor: bgColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              30,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/image_profile.png',
                    width: 64,
                  ), // Image.asset
                ), // Clip0val
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, ${user.name}',
                          style: primTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semibold,
                          ),
                        ), // Text
                        Text(
                          '@${user.username}',
                          style: subtitleStyle.copyWith(
                            fontSize: 16,
                          ),
                        ), // Text
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_outlined,color: navIcon,size: 20,)
              ],
            ),
          ), // Container
        ), // SafeArea
      );


        Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondTextStyle.copyWith(fontSize: 13),
            ),
            Icon(
              Icons.chevron_right,
              color: primText,
            ),
          ],
        ),
      );
    }


    
    Widget content(BuildContext context) {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: bgColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: primTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem(
                  'Edit Profile',
                ),
              ),
              menuItem(
                'Your Orders',
              ),
              menuItem(
                'Help',
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'General',
                style: primTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              menuItem(
                'Privacy & Policy',
              ),
              menuItem(
                'Term of Service',
              ),
              menuItem(
                'Rate App',
              ),
            ],
          ),
        ),
      );
    }

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel>(context);


    return Column(
      children: [
        header(user),
        content(context)
      ],
    );
  }
}
