import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class End_Screen extends StatelessWidget {
  const End_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.onbord22),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/images/success2.json"),
            Center(
                child: Text("Order confirmed successfully",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),)
            ),
            SizedBox(height: 120,),
            Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff3C312F)
              ),
              child: TextButton(

                  onPressed: () {
                    Navigator.push(context,  MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    },));

                  },
                  child: Text(
                    "Confirm",style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),
                  )),
            )
          ],
        )

      ],
    );
  }
}
