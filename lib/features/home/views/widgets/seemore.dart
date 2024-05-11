import 'package:flower_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key, required this.seemoretext});
  final String seemoretext;

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
          Image.asset(AppImages.seemore)
        ],
      ),
    );
  }
}
