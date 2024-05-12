import 'package:flower_app/features/data/models/sweets_model.dart';
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
      padding: const EdgeInsets.all(8.0),
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
                Expanded(
                    child: Image.asset(sweets[widget.index].images,height: 90,)),
                Text(sweets[widget.index].title),
                Text(sweets[widget.index].dec,
                  style:TextStyle(
                    color: Color(0xff959595)
                  ) ,),
                Text("${sweets[widget.index].price.toString()}.LE"),


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
            right: 6,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  sweets[widget.index].fav =!sweets[widget.index].fav;
                });

              },
                child: Icon(sweets[widget.index].fav==true? Icons.favorite: Icons.favorite_border,
                )
            ),
          )
        ],
      ),
    );
  }
}
