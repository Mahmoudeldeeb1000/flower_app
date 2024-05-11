import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/data/models/sweets_model.dart';
import 'package:flower_app/features/home/views/widgets/sweet_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sweets_screen extends StatelessWidget {
  const Sweets_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(AppImages.bestselling),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppImages.vector),
          )
        ],

      ),


      body: CustomScrollView(
        slivers: [
          SliverGrid.builder( gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
            itemCount: Sweets.length,
            itemBuilder: ( context,  index) {
            return SweetWidget(index: index);

            },)

        ],
      )

    );
  }
}
