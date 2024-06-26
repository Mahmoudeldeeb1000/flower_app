import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/Favourite/views/favourite_screen.dart';
import 'package:flower_app/features/best_selling/views/best_selling_screen.dart';
import 'package:flower_app/features/data/models/drinks_model.dart';
import 'package:flower_app/features/data/models/sweets_model.dart';
import 'package:flower_app/features/home/views/widgets/bannar_widgets.dart';
import 'package:flower_app/features/home/views/widgets/category_widget.dart';
import 'package:flower_app/features/home/views/widgets/search_widgets.dart';
import 'package:flower_app/features/home/views/widgets/seemore.dart';
import 'package:flower_app/features/home/views/widgets/sweet_widgets.dart';
import 'package:flower_app/features/product_details/views/product_details_screen.dart';
import 'package:flower_app/features/search/views/search_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Image.asset(AppImages.logo) ,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon( Icons.shopping_cart_outlined),
          )
        ],
      ),
      drawer:Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Favourite_Screen(),));
            },
            child: Row(
              children: [
                Expanded(child: Icon(Icons.favorite,size: 50,color: Colors.red,)),
            Spacer(),
                Text("Favourite",style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BannarWidget(),
            ),
            SliverToBoxAdapter(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Search_Screen();
                    },));
                  },
                  child: SearchWidget())

            ),
            SliverToBoxAdapter(
                child: SeeMore(
                  seemoretext: "Discover by category",
                )
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: 95,
                child: ListView.separated(
                  separatorBuilder: (context,index){
                    return SizedBox(
                      width: 7,
                    );
                  },
                  itemCount: drinks.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                       index: index,
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: SeeMore(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Best_Selling_Screen();
                    },));
                  },
                  seemoretext: "Best selling",
                )
            ),
            SliverGrid.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ), itemBuilder: (c,index){
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Product_Details_Screen(index: index),));
                },
                child: SweetWidget(
                  index: index,
                ),
              );
            },
              itemCount:2 ,)
          ],
        ),
      )
    );
  }
}
