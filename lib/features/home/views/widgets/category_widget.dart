import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/data/models/drinks_model.dart';
import 'package:flower_app/features/product_details/views/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
   CategoryWidget({super.key,required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xffF7CCC6).withOpacity(.6),
                  Color(0xffF7CCC6).withOpacity(.0),
                ],
                  begin:Alignment.topCenter,
                end: Alignment.bottomCenter

              )
            ),
            child: Image.asset(drinks[index].images,
            height: 70,width: 60,),
          ),
          Text(drinks[index].title)
        ],
      ),
    );
  }
}
