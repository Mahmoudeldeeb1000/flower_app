import 'package:flower_app/features/product_details/views/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';
import '../../data/models/sweets_model.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  List<SweetModel> searchList = [];

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          searchList = sweets
                              .where((element) => element.title
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                              .toList();
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 13),
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Icon(Icons.search),
                    decoration: BoxDecoration(
                      color: Color(0xffF7CCC6),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xffF7CCC6),
            ),
            SizedBox(height: 12,),
            Expanded(
              child: ListView.separated(
                itemCount: searchList.isEmpty ? sweets.length : searchList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Product_Details_Screen(index: index);
                      },));
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(height: 150,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffF7CEC8),
                                Color(0xffF7CEC8).withOpacity(0),
                              ],
                            ),
                            border: Border.all(
                              color: Color(0xffF7CCC6),
                              width: 0.6,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    searchList.isEmpty
                                        ? "${sweets[index].title.trim()}"
                                        : "${searchList[index].title.trim()}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "Pangolin",
                                      color: Colors.brown,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height * 0.06,
                                    child: Text(
                                      searchList.isEmpty
                                          ? "${sweets[index].dec.trim()}"
                                          : "${searchList[index].dec.trim()}",
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    searchList.isEmpty
                                        ? "${sweets[index].price} LE"
                                        : "${searchList[index].price} LE",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                width: MediaQuery.of(context).size.width * 0.34,
                                height: MediaQuery.of(context).size.height * 0.15,
                                image: AssetImage(
                                  searchList.isEmpty
                                      ? "${sweets[index].images}"
                                      : "${searchList[index].images}",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 28.21,
                          height: 29.24,
                          decoration: BoxDecoration(
                            color: Color(0xff3C312F),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(3),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 6,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  sweets[index].fav =!sweets[index].fav;
                                });

                              },
                              child: Icon(sweets[index].fav==true? Icons.favorite: Icons.favorite_border,
                              )
                          ),
                        )
                      ],
                    ),
                  );
                }, separatorBuilder: (BuildContext context, int index)  => SizedBox(height: 10,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
