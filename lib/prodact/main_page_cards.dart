import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../core/color_const.dart';
import '../core/color_const.dart';

class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xFFF5F5F3),
        appBar:  AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          //titleSpacing: 20.0,
         title: Text('Buy Now',
         style: TextStyle(color: buttonColor
         ,fontSize: 25,
           fontWeight: FontWeight.bold,
         ),),
          centerTitle: true,
          leading:  IconButton(onPressed: () {}, icon: Icon(
            Icons.menu,
            size: 22.0,
           color: buttonColor,
             )),
          actions: [
            CircleAvatar(
              backgroundColor: buttonColor,
              child: IconButton(onPressed: () {}, icon: Icon(
                Icons.shopping_cart_rounded,
                size: 16.0,
                color: Colors.white,

              )),
            ),

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [Expanded(
                  child: Container(
                    height:300,
                    width:150 ,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(0,3),)]
                    ),
                    child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset("assets/ice.jpg",height: 150,),
                          ),
                          Text("Cheese Cake",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1,),
                          Text("Cheese Cake With Strawberry Fruit",
                            style: TextStyle(
                                fontSize: 18),
                          ),
                          SizedBox(height: 6),
                          RatingBar.builder(
                            initialRating:4 ,
                            itemCount: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemSize: 16,
                            itemPadding: EdgeInsets.symmetric(horizontal:4 ),
                            itemBuilder: (context, _)=>Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (context){

                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 28,
                              )
                            ],
                          )
                        ],
                      ),),
                  ),
                ),
                  SizedBox (width: 5)
                  ,Expanded(
                    child: Container(
                      height:300,
                      width:150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 3,
                              offset: Offset(0,3),)]
                      ),
                      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset("assets/ice2.jpg",height: 130,
                              ),
                            ),
                            Text("Chocolate Cake",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 1,),
                            Text("Cheese Cake With Strawberry Fruit",
                              style: TextStyle(
                                  fontSize: 18),
                            ),
                            SizedBox(height: 6),
                            RatingBar.builder(
                              initialRating:4 ,
                              itemCount: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemSize: 16,
                              itemPadding: EdgeInsets.symmetric(horizontal:4 ),
                              itemBuilder: (context, _)=>Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (context){

                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$10",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 28,
                                )
                              ],
                            )

                          ],
                        ),),
                    ),
                  ),],

              ),
              SizedBox(height: 5,),
              Row(children: [Expanded(
                child: Container(
                  height:300,
                  width:150 ,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0,3),)]
                  ),
                  child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset("assets/ice4.jpg",height: 150,),
                        ),
                        Text("Dounts",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1,),
                        Text("Flavor Inside And Out",
                          style: TextStyle(
                              fontSize: 18),
                        ),
                        SizedBox(height: 6),
                        RatingBar.builder(
                          initialRating:4 ,
                          itemCount: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 16,
                          itemPadding: EdgeInsets.symmetric(horizontal:4 ),
                          itemBuilder: (context, _)=>Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          onRatingUpdate: (context){

                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$10",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 28,
                            )
                          ],
                        )

                      ],
                    ),),
                ),
              ),
                SizedBox (width: 5)
                ,Expanded(
                  child: Container(
                    height:300,
                    width:150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(0,3),)]
                    ),
                    child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset("assets/ice4.jpg",height: 150,),
                          ),
                          Text("Ice Cream",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1,),
                          Text("Fresh Fruity Flavour",
                            style: TextStyle(
                                fontSize: 18),
                          ),
                          SizedBox(height: 6),
                          RatingBar.builder(
                            initialRating:4 ,
                            itemCount: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemSize: 16,
                            itemPadding: EdgeInsets.symmetric(horizontal:4 ),
                            itemBuilder: (context, _)=>Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (context){

                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$10",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 28,
                              )
                            ],
                          )

                        ],
                      ),),
                  ),
                ),],

              ),
            ] ,
          ),
        ),
        bottomNavigationBar:Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: EdgeInsets.all(16),
              tabs: const[
                GButton(icon: Icons.home,
                  text: 'Home',),
                GButton(icon: Icons.phone_android_outlined,
                  text: 'About App',),
                GButton(icon: Icons.account_box_outlined,
                  text: 'About Us',),
                GButton(icon: Icons.login_outlined,
                  text: 'Log Out',),
              ],
            ),
          ),
        )
    );
  }
}