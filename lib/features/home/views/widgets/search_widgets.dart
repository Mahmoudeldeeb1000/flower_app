import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            child:
            Text( "search here..",
              style: TextStyle(
                color: Colors.brown.withOpacity(.3),
              ),
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius:BorderRadius.circular(10)
            ),
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
        )

      ],
    );
  }

}