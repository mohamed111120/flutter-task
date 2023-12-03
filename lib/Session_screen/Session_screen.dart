import 'package:flutter/material.dart';
import 'package:task5/Session_screen/Session_screen_Widget.dart';

class SessionScreen extends StatelessWidget {
  const SessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Back"),
        // titleSpacing: 20,
        leadingWidth: 25,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Avaiable cars for ride',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
              Text(
                '18 cars found',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CarWidget(),
                  separatorBuilder: (context, index) => SizedBox(height: 18,),
                  itemCount: 18)
            ],
          ),
        ),
      ),
    );
  }
}
