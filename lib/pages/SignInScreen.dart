import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/AuthProvider.dart';
import '../theme.dart';




class SignInScreen extends StatelessWidget {
  SignInScreen({ Key key }) : super(key: key);


  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  
  handleSignin(BuildContext context) async {
    final authProv = await Provider.of<AuthProvider>(context).login(
      email: emailController.text,
      password: passwordController.text
    );

    if(authProv) {
      Navigator.pushNamed(context, '/home').then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text('Berhasil Login',style: primTextStyle,)
          )
        );
      });

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('gagal Login',style: primTextStyle,)
          )
        );
    }
  }


  Widget header() => Container(
    margin: EdgeInsets.only(top: defaultMargin),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Login',
        style: primTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semibold
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          'Sign In to Continue',
          style: subtitleStyle, // ukuran default font flutter itu 14
          
        )
      ],
    ),
  );

  Widget emailInput() => Container(
    margin: const EdgeInsets.only(top:70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
          style: primTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),
        ),
        const SizedBox(height: 12,),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: bgColor2,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.mail_outline_outlined,color: primaryColor,),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Email Address',
                      hintStyle: subtitleStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );

  Widget passwordInput() => Container(
    margin: const EdgeInsets.only(top:20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: primTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),
        ),
        const SizedBox(height: 12,),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: bgColor2,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.mail_outline_outlined,color: primaryColor,),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextFormField(
                    controller:  passwordController,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Email Address',
                      hintStyle: subtitleStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );


  Widget signInButton(BuildContext ctx) => Container(
    height: 50,
    margin: const EdgeInsets.only(top: 30),
    width: double.infinity,
    child: TextButton(
      child: Text(
        'Sign In',
        style: primTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium
        ),
      ),
      onPressed: () => this.handleSignin(ctx),
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      ),
    ),
  );


  Widget footer(BuildContext context) => Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'dont have an account? ',
          style: subtitleStyle.copyWith(fontSize: 12),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushNamed('/sign-up'),
          child: Text(
            'Sign Up',
             style: subtitleStyle.copyWith(
               fontSize: 12,
               color: primaryColor,
               fontWeight: medium
             ),
          ),
        )
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signInButton(context),
              Spacer(),
              footer(context)
            ],
          ),
        ),
      ),
      
    );
  }
}