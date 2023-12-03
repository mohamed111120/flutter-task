import 'package:flutter/material.dart';


class CircleImagewidget extends StatelessWidget {
  const CircleImagewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBLORxmuwMNWRDP-AHNGnLl9fO-vaHpr1iA&usqp=CAU'),
          radius: 30,
          child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,

            ),
          ),
        ),
        Text('Mohamed',style: TextStyle(color: Colors.white),)
      ],
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBLORxmuwMNWRDP-AHNGnLl9fO-vaHpr1iA&usqp=CAU'),
          radius: 30,
          child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,

            ),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohamed',style: TextStyle(color: Colors.white),),
            Text('Welcome to Flutter',style: TextStyle(color: Colors.white),),
          ],

        ),
        Expanded(child: SizedBox()),
        Text('11:11 PM',style: TextStyle(color: Colors.grey),),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
