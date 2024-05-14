import 'package:flower_app/features/data/models/sweets_model.dart';
import 'package:flutter/material.dart';

class Favourite_Screen extends StatefulWidget {
  const Favourite_Screen({super.key});

  @override
  State<Favourite_Screen> createState() => _Favourite_ScreenState();
}

class _Favourite_ScreenState extends State<Favourite_Screen> {
  @override
  Widget build(BuildContext context) {
    List<SweetModel> favlist =sweets.where((element) => element.fav==true).toList();
    return SafeArea(

      child: Scaffold(
        body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: favlist.length,
          itemBuilder:(context, index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                title: Text(favlist[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text("${favlist[index].price} \$",
                  style:  TextStyle(
                      color: Colors.orange
                  ),),
                leading: Image.asset(favlist[index].images),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      favlist[index].fav=false;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Color(0xffFFF2E5),
                    child: Icon(Icons.favorite,color: Colors.red,),
                  ),
                ),
              ),
            );
          } ,



        ),
      ),
    );
  }
}
