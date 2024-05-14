import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/data/models/sweets_model.dart';
import 'package:flower_app/features/home/views/widgets/sweet_widgets.dart';
import 'package:flower_app/features/product_details/views/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Best_Selling_Screen extends StatelessWidget {
  const Best_Selling_Screen({super.key});

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
            itemCount: sweets.length,
            itemBuilder: ( context,  index) {
            return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Product_Details_Screen(
                      index: index,
                    );
                  },));
                },
                child: SweetWidget(index: index));

            },)

        ],
      )

    );
  }
}
