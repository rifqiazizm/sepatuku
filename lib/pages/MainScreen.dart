import 'package:flutter/material.dart';
import '../pages/HomeScreen.dart';
import '../pages/ChatScreen.dart';
import '../pages/ProfileScreen.dart';
import '../pages/WishlistScreen.dart';
import '../theme.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({ Key key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int currentIndex = 0;



  Widget cartButton() => FloatingActionButton(
    onPressed: () {
      Navigator.of(context).pushNamed('/cart');
    },
    backgroundColor: secondaryColor,
    child: Icon(Icons.shopping_bag_rounded,color: primaryColor,size: 20,),
  );

  Widget customBottomNav() => ClipRRect(
    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    child: BottomAppBar(
      shape: CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        onTap: (val) {
          print(val);
          setState(() {
            this.currentIndex = val;            
          });

        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: bgColor4,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 20,bottom: 10),
              child: Icon(Icons.home, color : this.currentIndex == 0 ? primaryColor : navIcon ,size: 20,)
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 20,bottom: 10),
              child: Icon(Icons.chat, color : this.currentIndex == 1 ? primaryColor : navIcon,size: 20,)
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 20,bottom: 10),
              child: Icon(Icons.favorite, color : this.currentIndex == 2 ? primaryColor : navIcon,size: 20,)
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 20,bottom: 10),
              child: Icon(Icons.person_rounded, color : this.currentIndex == 3 ? primaryColor : navIcon,size: 20,)
            ),
            label: ''
          )
        ],
      ),
    ),
  );


  Widget body() {
    switch (this.currentIndex) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return ChatScreen();
        break;
      case 2:
      return WishlistScreen();
        break;
      case 3:
      return ProfileScreen();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}