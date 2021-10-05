class Car{
  final String brand;
  final String year;
  final String price;
  final String mileage;
  final String pict;

  Car(this.brand, this.year, this.price, this.mileage, this.pict);
}

final List<Car> cars =
_list.map((c) => Car(c['Brand'].toString(), c['year'].toString(), c['price'].toString(), c['mileage'].toString(), c['pict'].toString()))
    .toList();

final List<Map<String, Object>> _list = [
  {
    "Brand": "Honda Civic",
    "year": "2018",
    "price": "18,000",
    "mileage": "26,000",
    "pict": "assets/images/honda.jpeg"
  },
  {
    "Brand": "Jaguar E-Pace",
    "year": "2019",
    "price": "28,000",
    "mileage": "11,000",
    "pict": "assets/images/jaguar.jpeg"
  },
  {
    "Brand": "Mercedes C-300",
    "year": "2017",
    "price": "26,000",
    "mileage": "24,000",
    "pict": "assets/images/mercedes.jpeg"
  },
  {
    "Brand": "Tesla Model 3",
    "year": "2017",
    "price": "35,000",
    "mileage": "20,000",
    "pict": "assets/images/tesla.jpeg"
  },
  {
    "Brand": "Toyota Camry",
    "year": "2018",
    "price": "27,000",
    "mileage": "17,000",
    "pict": "assets/images/camry.jpeg"
  }  ,
  {
    "Brand": "Volkswagen Atlas Cross Sport",
    "year": "2019",
    "price": "32,000",
    "mileage": "15,000",
    "pict": "assets/images/volk.jpeg"
  }
];



