import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/sweets/views/sweets_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key, required this.seemoretext, this.ontap});
  final String seemoretext;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 29,left: 8,right: 8,bottom: 10),
      child: Row(
        children: [
          Text(seemoretext,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
          Spacer(),
          GestureDetector(
              onTap: ontap,
              child: Image.asset(AppImages.seemore))
        ],
      ),
    );
  }
}
