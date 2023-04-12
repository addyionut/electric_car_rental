import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../models/car_model.dart';
import '../pages/product_detail_page.dart';

class ProductWidget extends StatefulWidget {
  final Car car;

  const ProductWidget({Key? key, required this.car}) : super(key: key);

  @override
  State<ProductWidget> createState( ) => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {

  @override
  Widget build(BuildContext context) {
    //TODO: Investigate number format can't be found
    final numberFormat = NumberFormat("###,###,###");
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetailPage()));
          },
          child: Container(
            height: 200,
            width: screenWidth,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                //car.imagePath[0],
                image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/de/Nissan_Leaf_2018_%2831874639158%29_%28cropped%29.jpg"),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16, right: 16),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Icon(
                      Icons.favorite_border
                      // widget.car.isFavorited ? Icons.favorite : Icons.favorite_border,
                      // color: widget.car.isFavorited ? Colors.red : Colors.black87,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 8, right: 16, left: 16),
          child: Row(children: [
            Text("\$ ${numberFormat.format(widget.car.price)}"),
            const SizedBox(
              width: 16,
            ),
            Text(widget.car.address, style: GoogleFonts.manrope(
              color: Colors.grey,
              fontSize: 14
            ),)
          ]),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
          child:
            Text('${widget.car.doorsNumber} doors number / ${widget.car.batteryCapacity} KWH')
        )
      ],
    );
  }
}
