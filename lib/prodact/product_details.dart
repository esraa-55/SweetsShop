import 'package:esraanewsweetmarket/core/color_const.dart';
import 'package:esraanewsweetmarket/core/customs_buttons.dart';
import 'package:esraanewsweetmarket/layout_cubit/cubit.dart';
import 'package:esraanewsweetmarket/layout_cubit/state.dart';
import 'package:esraanewsweetmarket/prodact/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetails extends StatelessWidget {

  String? title;
  String? image;
  String? price;

  ProductDetails({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
              cubit.initialNumber = 1;
            },icon: Icon(Icons.arrow_back),),
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
                    onPressed: () {
                      cubit.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Text(cubit.initialNumber<=1?'1':
                  '${cubit.initialNumber}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: buttonColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      cubit.decrement();

                    },
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                child: Image(

                  fit: BoxFit.fitHeight,
                  image: NetworkImage(image!),
                ),
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
                        title!,
                        style: TextStyle(fontSize: 30,
                            color: buttonColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '$price \$',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ]
            ,
          )
          ,
        );
      },
    );
  }
}