import 'package:flower_app/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannarWidget extends StatelessWidget {
  const BannarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.banner),
        Positioned(
            top: 13,
            child: Text("Choose What Suits  \n Your Test"))
      ],
    );
  }
}
