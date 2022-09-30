import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/AuthProvider.dart';
import '../theme.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({ Key key }) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  

  Future<void> handleSignUp(BuildContext context) async {
    final authProv = await Provider.of<AuthProvider>(context).register(
      name: nameController.text,
      username: usernameController.text,
      email: emailController.text,
      password: passwordController.text
    );

    if(authProv) {
      Navigator.pushNamed(context, '/home').then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text('Berhasil Register',style: primTextStyle,)
          )
        );
      });

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('gagal Register',style: primTextStyle,)
          )
        );
    }
  }


  Widget header() => Container(
    margin: EdgeInsets.only(top: defaultMargin),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign Up',
        style: primTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semibold
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          'Register and Happy Shopping',
          style: subtitleStyle, // ukuran default font flutter itu 14
          
        )
      ],
    ),
  );

  Widget nameInput() => Container(
    margin: const EdgeInsets.only(top:50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
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
                Icon(Icons.person,color: primaryColor,),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Full Name',
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

  Widget usernameInput() => Container(
    margin: const EdgeInsets.only(top:20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
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
                Icon(Icons.circle,color: primaryColor,),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Username',
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

  Widget emailInput() => Container(
    margin: const EdgeInsets.only(top:50),
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
                Icon(Icons.mail_outline_rounded,color: primaryColor,),
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
    margin: const EdgeInsets.only(top:50),
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
                Icon(Icons.lock_rounded,color: primaryColor,),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Password',
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


  Widget signUpButton(BuildContext ctx) => Container(
    height: 50,
    margin: const EdgeInsets.only(top: 30),
    width: double.infinity,
    child: TextButton(
      child: Text(
        'Sign Up',
        style: primTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium
        ),
      ),
      onPressed: () => Navigator.of(ctx).pushNamed('/home'),
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
          'Already have an account? ',
          style: subtitleStyle.copyWith(fontSize: 12),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
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
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(context),
              Spacer(),
              footer(context)
            ],
          ),
        ),
      ),
      
    );
  }
}