import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../core/customs_buttons.dart';
import '../prodact/main_page_cards.dart';
import 'deteld_category.dart';
import 'models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

    DataModel?onBoardingData;

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() { getOnBordingData();
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(
                child: Text("Find Your Favorite Dessert",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7C101E),
                        fontFamily:'Poppins',
                        fontSize: 27)),
              ),
            ),
            AspectRatio(
              aspectRatio: 0.85,
              child: PageView.builder(
                  itemCount: dataList.length,
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return carouselView(index);
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
          print("value $value index $index");
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(dataList[index]),
        );
      },
    );
  }

  Widget carouselCard(DataModel data) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
              tag: data.imageName!,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(data: data)));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image:AssetImage(
                           data!.imageName!
                          ),
                          fit: BoxFit.fill),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          //color: Colors.black26
                          color: Color(0xFFAA4279), )
                      ]),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            data!.title!,
            style: const TextStyle(
                color: Color(0xFF7C101E),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            data!.subtitle!,
            style: const TextStyle(
                color: Colors.black45,
                //color: Color(0xFFF6EFEF),
                fontSize: 16,
                fontWeight: FontWeight.w800),
          ),
        ),

        Padding(padding:const EdgeInsets.all(8.0),
          child:  CustomGenralButton(
            OnTap: (){
              if(_pageController!.page!<3){
                _pageController?.nextPage(duration:Duration(milliseconds: 500),
                    curve:Curves.easeIn);
              }
              else{
                Get.to(()=>Home(),transition:Transition.rightToLeft ,
                    duration: Duration(milliseconds:500 ));

              }
            },
            text:_pageController!.hasClients ? (_pageController?.page==3?'Buy NOW':'Next') :'Next',
          ),)

      ],
    );
  }
  getOnBordingData(){
    FirebaseFirestore.instance.collection("onbording").doc().get().then((value) {
      onBoardingData=DataModel.fromJson(value.data()!) ;
    });

  }
}
