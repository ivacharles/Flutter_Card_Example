import 'package:car_shop_hw4/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({Key? key}) : super(key: key);
  static const routeName = '/details';


  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as Car;

    return Scaffold(
    appBar: AppBar(
      title: const Text('Car Shop', style: TextStyle(color: Colors.amber)),
      elevation: 0,
      backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: ListTile(
            shape: Border.all(width: 2, style: BorderStyle.solid),
            leading: const Icon(Icons.accessible_rounded),
            title: Text(args.brand),
            subtitle: Text('Year: '+ args.year+'\n Mileage: '+args.mileage),
          ),
        ),
      ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Design by Iva Lesperance Charles', textAlign: TextAlign.center , style: TextStyle(fontSize: 20 , color: Colors.amber),
            ),
          ),
        )
    );
  }
}
