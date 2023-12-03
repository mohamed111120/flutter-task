import 'package:flutter/material.dart';

import 'second_screen_methods.dart';

class FristScreenWelcome extends StatelessWidget {
  const FristScreenWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              titleText("Welcom"),
              supTitleText("please sign up to continue using our app"),
              SizedBox(
                height: 30,
              ),
              Image.network(
                  height: 160,
                  width: 320,
                  fit: BoxFit.cover,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsd3Ekcyr_JNu9QMShMOSpKAhAbRgQBPH22g&usqp=CAU'),
              SizedBox(
                height: 20,
              ),
              supTitleText('Enter via social networks'),
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
                height: 20,
              ),
              supTitleText('or login with email'),
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [supTitleText('already have an account ?'),
                TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(color: Colors.blue),))
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
