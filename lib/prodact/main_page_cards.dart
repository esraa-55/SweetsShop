import 'package:esraanewsweetmarket/layout_cubit/cubit.dart';
import 'package:esraanewsweetmarket/layout_cubit/state.dart';
import 'package:esraanewsweetmarket/prodact/product_details.dart';
import 'package:esraanewsweetmarket/prodact/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../core/color_const.dart';
import '../core/color_const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          backgroundColor: Color(0xFFF5F5F3),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            //titleSpacing: 20.0,
            title: Text(
              'Buy Now',
              style: TextStyle(
                color: buttonColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 22.0,
                  color: buttonColor,
                )),
            actions: [
              CircleAvatar(
                backgroundColor: buttonColor,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      size: 16.0,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: buttonColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: GNav(
                backgroundColor: buttonColor,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.brown,
                padding: EdgeInsets.all(16),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.collections,
                    text: 'Categories',
                  ),
                  GButton(
                    icon: Icons.info_outline,
                    text: 'About App',
                  ),
                  GButton(
                    icon: Icons.account_box_outlined,
                    text: 'About Us',
                  ),
                  GButton(
                    icon: Icons.login_outlined,
                    text: 'Log Out',
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: StreamBuilder<List<ProductModel>>(
                      stream: cubit.myProducts(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error No Data found! ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          final products = snapshot.data!.reversed;
                          return ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: products
                                .map((e) => InkWell(
                              onTap: (){
                                Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ProductDetails();
                                            }));
                              },
                                  child: Container(
                                            decoration: BoxDecoration(
                                              boxShadow: const <BoxShadow>[
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    blurRadius: 20.0,
                                                    offset: Offset(0.0, 0.75)),
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image:
                                                      NetworkImage(e.imageName!),
                                                ),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Text(
                                                      e.title!,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 25),
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                      "${e.price!}\$",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 25),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                )

                                    //     Center(
                                    //   child: productCard(
                                    //       model: e,
                                    //       context: context,
                                    //       onTap: () {
                                    //         Navigator.push(context,
                                    //             MaterialPageRoute(
                                    //                 builder: (context) {
                                    //           return ProductDetails();
                                    //         }));
                                    //       }),
                                    // ),
                                    )
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

                    // GridView.builder(
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     scrollDirection: Axis.vertical,
                    //     shrinkWrap: true,
                    //     itemCount: 1,
                    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 2,
                    //       crossAxisSpacing: 15,
                    //       mainAxisSpacing: 15,
                    //     ),
                    //     itemBuilder: (context, index) =>
                    //         ),
                  ),
                ],
              )),
        );
      },
    );
  }
}

Widget productCard({
  Function()? onTap,
  required ProductModel model,
  required context,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(model.imageName!),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                    child: Text(
                  model.title!,
                  style: TextStyle(fontSize: 20),
                )),
                Text(
                  '${model.price!}\$',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );

Widget defaultCategoriesBox({
  required ImageProvider img,
  required String text,
  double width = 60,
  double height = 60,
  double elevation = 3,
  Color? color,
  Color? textColor,
  Function()? onTap,
}) =>
    Material(
      color: color,
      elevation: elevation,
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: img,
              width: width,
              height: height,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
