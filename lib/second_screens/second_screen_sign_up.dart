import 'package:flutter/material.dart';

import 'second_screen_methods.dart';

class SecondScreenSignUp extends StatelessWidget {
  const SecondScreenSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                titleText("Sign Up"),
                supTitleText("please sign up to enter in app"),
                SizedBox(
                  height: 20,
                ),
                supTitleText("enter via social networks"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttons(
                        Icon(
                          Icons.facebook,
                          size: 38.0,
                          color: Colors.white,
                        ),
                        Colors.blue[900],
                        140.0,
                        60.0),
                    buttons(
                        Icon(
                          Icons.delivery_dining_rounded,
                          size: 38.0,
                          color: Colors.white,
                        ),
                        Colors.lightBlueAccent,
                        140.0,
                        60.0),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                supTitleText("or login with email"),
                SizedBox(
                  height: 20,
                ),
                myForm('Email'),
                myForm('password'),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 20,
                    ),
                    supTitleText(" I agree woth private policy"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                buttons(
                    Text(
                      'SignUp',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Colors.blue,
                    300.0,
                    60.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    supTitleText('already have an account ?'),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
