import 'package:esraanewsweetmarket/cart/cart_model.dart';
import 'package:esraanewsweetmarket/core/color_const.dart';
import 'package:esraanewsweetmarket/layout_cubit/state.dart';
import 'package:esraanewsweetmarket/prodact/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../layout_cubit/cubit.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);

    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            backgroundColor: buttonColor,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                StreamBuilder<List<CartModel>>(
                  stream: cubit.cart(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error No Data found! ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final products = snapshot.data!.reversed;
                      return ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: products
                            .map((e) => state is RemoveFromCartLoadingState
                                ? const SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ))
                                : CartCard(
                                    title: e.title!,
                                    imageName: e.imageName!,
                                    price: e.price!,
                                    number: e.number!,
                                    context: context,
                                    onTap: () {
                                      cubit.removeFromCart(
                                          productId: e.productId!);
                                    }))
                            .toList(),
                      );
                    } else {
                      return Center(
                          child: CircularProgressIndicator(
                        color: buttonColor,
                      ));
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget CartCard({
  required String title,
  required String imageName,
  required String price,
  required String number,
  required context,
  Function()? onTap,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                offset: Offset(0.0, 0.75)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image(
                image: NetworkImage(imageName),
                height: 100,
                width: 100,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toUpperCase(),
                    maxLines: 2,
                    style: TextStyle(
                        color: buttonColor,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$price\$",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          number,
                          style: TextStyle(color: buttonColor, fontSize: 15),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: onTap,
                          icon: Icon(
                            Icons.delete_outline,
                            color: buttonColor,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
