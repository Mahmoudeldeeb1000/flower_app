import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/data/models/drinks_model.dart';
import 'package:flower_app/features/data/models/sweets_model.dart';
import 'package:flower_app/features/drinks/views/drinks_screen.dart';
import 'package:flower_app/features/home/views/widgets/bannar_widgets.dart';
import 'package:flower_app/features/home/views/widgets/category_widget.dart';
import 'package:flower_app/features/home/views/widgets/search_widgets.dart';
import 'package:flower_app/features/home/views/widgets/seemore.dart';
import 'package:flower_app/features/home/views/widgets/sweet_widgets.dart';
import 'package:flower_app/features/sweets/views/sweets_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      drawer:Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BannarWidget(),
            ),
            SliverToBoxAdapter(
              child: SearchWidget()

            ),
            SliverToBoxAdapter(
                child: SeeMore(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Drinks_Screen();
                    },));
                  },
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
                      return Sweets_screen();
                    },));
                  },
                  seemoretext: "Best selling",
                )
            ),
            SliverGrid.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ), itemBuilder: (c,index){
              return SweetWidget(
                index: index,
              );
            },
              itemCount:2 ,)
          ],
        ),
      )
    );
  }
}
