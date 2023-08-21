import 'package:esraanewsweetmarket/core/color_const.dart';
import 'package:flutter/material.dart';

import 'layout_cubit/cubit.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);

    return  Column(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            child: Center(child: Text('About App Page',style: TextStyle(color: buttonColor,fontSize: 30),))
        ),
      ],
    );
  }
}
