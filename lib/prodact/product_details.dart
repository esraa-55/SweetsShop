import 'package:esraanewsweetmarket/core/color_const.dart';
import 'package:esraanewsweetmarket/core/customs_buttons.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        backgroundColor: buttonColor,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                offset: Offset(0.0, 0.75)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              10,
            ),
            topRight: Radius.circular(
              10,
            ),
          ),
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add To Cart"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, elevation: 0),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttonColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
            Text(
              '1',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttonColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     boxShadow: const <BoxShadow>[
      //       BoxShadow(
      //           color: Colors.black12,
      //           blurRadius: 20.0,
      //           offset: Offset(0.0, 0.75)),
      //     ],
      //     color: Color(0xff303030),
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(
      //         10,
      //       ),
      //       topRight: Radius.circular(
      //         10,
      //       ),
      //     ),
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/istockphoto-182026106-612x612.jpg'),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Product Name',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Text(
                  '\$10',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
