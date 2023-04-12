//import '../view/pages';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/car_model.dart';
import '../widget/button_menu_widget.dart';
import '../widget/filter_widget.dart';
import '../widget/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedListItem = 2;
  final filterList = ['<\$10.000', 'Tesla', 'Nissan', 'Renault', 'Volkswagen'];
  final carList = List.generate(4,
        (index) => Car(
        price: 10000 * (index + 1), doorsNumber: 2 + index, address: "address Cluj", description: "description", batteryCapacity: 10.0 * (index), imagePath: [])
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //crete ConstantColors class with constant colors
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonMenuWidget(icon: Icons.menu, onPressed: () {
                    print('pressed!');
                  },),
                  Text('Electric Cars For Rent', style: GoogleFonts.manrope(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600)
                  ),
                  ButtonMenuWidget(icon: Icons.refresh, onPressed: () {
                    print('reload pressed!');
                  },)
                ],
              ),
              const SizedBox(height: 32),
              Text('Find Your Electric Car', style: GoogleFonts.manrope(
                fontSize: 32,
                color: Colors.black87,
                fontWeight: FontWeight.w600
              )),
              const Divider(color: Colors.grey, thickness: .5,),
              Container(
                height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: filterList.length,
                      itemBuilder: (context, index) {
                      //TODO: Wrap widget inside GestureDetector, send additional bool param to widget
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedListItem = index;
                          });
                        },
                        child: FilterWidget(
                          filterText: filterList[index],
                          isClicked: selectedListItem == index ? true : false,
                        ),
                      );
                      })),
              const SizedBox(height: 32),
              Column(
                  children: List.generate(carList.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ProductWidget(
                      car: carList[index],
                    ),
                  );
                  //IMPLEMENT LOG FOR UI
                    //SEND A HOUSE MODEL OBJECT TO IMAGE WIDGET AND
                    //DISPLAY IT'S INFORMATION
                    //Navigator.push(context, MaterialPageRouter(builder))
                  }
                )
              )
            ],
          )
        ),
      ),
    );
  }
}