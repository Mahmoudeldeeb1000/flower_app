import 'package:flower_app/features/data/sweets_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SweetWidget extends StatefulWidget {
   SweetWidget({super.key,required this.index});
  int index;

  @override
  State<SweetWidget> createState() => _SweetWidgetState();
}

class _SweetWidgetState extends State<SweetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(width: double.infinity,
            decoration: BoxDecoration(gradient: LinearGradient(
              colors: [
                Color(0xff0F7CCC6).withOpacity(.25),
                Colors.white
              ],
                begin:Alignment.topCenter,
              end: Alignment.bottomCenter

            ),
              borderRadius: BorderRadius.circular(20),
            ),


            child: Column(
              children: [
                Image.asset(Sweets[widget.index].images,height: 90,),
                Text(Sweets[widget.index].title),
                Text(Sweets[widget.index].dec,
                  style:TextStyle(
                    color: Color(0xff959595)
                  ) ,),
                Text("${Sweets[widget.index].price.toString()}.LE"),


              ],
            ),
          ),

          Container(
            child: Icon(Icons.add,
              color: Colors.white,),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(3)
                )
            ),
          ),
          Positioned(
            top: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Sweets[widget.index].fav =!Sweets[widget.index].fav;
                });

              },
                child: Icon(Sweets[widget.index].fav==true? Icons.favorite: Icons.favorite_border,
                )
            ),
          )
        ],
      ),
    );
  }
}
