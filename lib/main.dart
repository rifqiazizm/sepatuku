import 'package:flutter/material.dart';
import 'package:shamo/provider/AuthProvider.dart';
import './pages/CartScreen.dart';
import './pages/CheckoutScreen.dart';
import './pages/DetailChatScreen.dart';
import './pages/MainScreen.dart';
import './pages/SignUpScreen.dart';
import './pages/SignInScreen.dart';
import './pages/SplashPage.dart';
import './pages/EditProfileScreen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => AuthProvider(),)
      ],
      child: MaterialApp(
        title: 'Shoes Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/' : (ctx) => SplashScreen(),
          '/sign-in' : (ctx) => SignInScreen(),
          '/sign-up' : (ctx) => SignUpScreen(),
          '/home' : (ctx) => MainScreen(),
          '/chat' : (ctx) => DetailChatScreen(),
          '/edit-profile' : (ctx) => EditProfileScreen(),
          '/cart' : (ctx) => CartScreen(),
          '/checkout' : (ctx) => CheckoutScreen(),
          // '/success' : (ctx) => 
        },
      
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}