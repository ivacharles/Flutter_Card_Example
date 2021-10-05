import 'package:car_shop_hw4/car.dart';
import 'package:car_shop_hw4/carcard.dart';
import 'package:car_shop_hw4/cardetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        CarDetail.routeName: (context) =>
            const CarDetail(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Shop', style: TextStyle(color: Colors.amber)),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black12,
        child: Center(
          child: SizedBox(
            width: 350,
            child: Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: ListView.separated(
                separatorBuilder: ( context, int index) => const Divider(),
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(
                          context,
                          CarDetail.routeName,
                          arguments: cars.elementAt(index),
                      ),
                    },
                    child: SizedBox(
                      width: 80,
                        child: CarCard(car: cars.elementAt(index))
                    ),
                  );
                },
              ),
            ),
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
