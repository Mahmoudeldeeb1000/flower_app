import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/data/models/drinks_model.dart';
import 'package:flower_app/features/data/models/sweets_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({super.key});

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  List<DrinkModel> searchList = [ ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppImages.milkshaketext),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(AppImages.vector),
          )
        ],

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        searchList = drinks.where((element) =>element.title.toLowerCase().contains(value.toLowerCase())).toList();

                      });
                    },
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                        ) ,
                  ),
                ),
                SizedBox(width: 13,),
                Container(
                  padding: EdgeInsets.all(2),
                  child: Icon(Icons.search),
                  decoration: BoxDecoration(
                      color: Color(0xffF7CCC6),
                      borderRadius: BorderRadius.only(
                          bottomRight:Radius.circular(15) ,
                          topLeft:Radius.circular(15) ,
                          topRight: Radius.circular(15)
                      )
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Color(0xffF7CCC6),),
          Expanded(
            child: ListView.builder(
                itemCount: searchList.isEmpty ?  drinks.length :searchList.length,
                itemBuilder: (c,index) {
                  return Text(  searchList.isEmpty ?  drinks[index].title: searchList[index].title);
                }),
          )
        ],
      ),

    );
  }
}
