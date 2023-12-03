import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.teal),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BMW Carbino',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Automatic | 3 seats | Octane',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Row(children: [
                    Icon(Icons.add_location),
                    Text(
                      '800m (5mins away)',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ]),
                ],
              ),
              Image.asset(
                'assets/—Pngtree—car lamborghini_8435003.png',
                width: 120,
                height: 90,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(130, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.tealAccent,
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.teal,
                    )),
                child: const Text('Book later',style: TextStyle(color: Colors.white,),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(130, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.teal,
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.teal,
                    )),
                child: const Text('Ride Now',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
