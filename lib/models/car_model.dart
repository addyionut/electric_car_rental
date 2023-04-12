class Car {
  int price;
  int doorsNumber;
  String address;
  String description;
  double batteryCapacity;
  List<String> imagePath;

  Car(
      {required this.price,
        required this.doorsNumber,
        required this.address,
        required this.description,
        required this.batteryCapacity,
        required this.imagePath});

  @override
  String toString() {
    // TODO: implement toString
    return 'Price: $price \nAddress: $address';
  }

  Map<String, dynamic> toJson() =>
      {
        'price': price,
        'doors number': doorsNumber,
        'address': address,
        'description': description,
        'battery capacity(KWH)': batteryCapacity,
        //TODO: lIST<Objects> to Json how to
        'imagePath': 'https://upload.wikimedia.org/wikipedia/commons/d/de/Nissan_Leaf_2018_%2831874639158%29_%28cropped%29.jpg',
      };

}

