import 'package:flutter/material.dart';

import 'car.dart';

class CarCard extends StatefulWidget {
  const CarCard({Key? key, required this.car}) : super(key: key);

  final Car car;

  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      shape: RoundedRectangleBorder(
            side: const BorderSide( width: 1),
            borderRadius: BorderRadius.circular(10),
            ),
      child: Column(
        children: [
           Padding(
             padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
             child: Row(
               children: [
                 Expanded(
                     child: Text(widget.car.brand, style: const TextStyle(fontWeight: FontWeight.bold),), flex: 1,
                 ),
                 Expanded(
                   child: ButtonBar(
                    children: [
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.share_sharp),
                          tooltip: 'Share',

                      ),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.favorite_border_outlined),
                          tooltip: 'wishlist',

                      ),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.shopping_cart_outlined),
                          tooltip: 'cart',

                      ),
                    ],
                ),
                 flex: 2,),
               ],
             ),
           ),

          Image.asset(widget.car.pict, width: 350, height: 220, fit: BoxFit.cover),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('The mileage on this car is '+widget.car.mileage+' and the price is \$'+widget.car.price, textAlign: TextAlign.center,),
            )
          )
        ],
      ),
    );
  }
}
