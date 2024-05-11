import 'package:flower_app/core/utils/app_fonts.dart';
import 'package:flower_app/features/home/views/home_screen.dart';
import 'package:flower_app/features/onbording/data/models/onbording_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScreen extends StatelessWidget {
   OnbordingScreen({super.key});

  PageController pageController= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: onbordings.length,

          itemBuilder:(context, index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(onbordings[index].backgroundImage,
                height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onbordings[index].image,),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(onbordings[index].title,
                      style: TextStyle(
                        fontFamily: AppFonts.RockSalt,
                        fontSize: 20
                      ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        onbordings[index].desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: AppFonts.Sakkal,
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                          minWidth: double.infinity,
                          color: Colors.brown,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(60),
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              )),
                          textColor: Colors.white,

                          onPressed: (){
                            if (index==onbordings.length-1){
                              Navigator.pushReplacement(context,  MaterialPageRoute(builder:(context) {
                                return HomeScreen();
                              },));
                            }else{
                              pageController.animateToPage(index+1, duration: Duration(

                                  seconds: 1
                              ), curve: Curves.bounceInOut);

                            }
                      },
                        child: Text(onbordings[index].textButton),

                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      SmoothPageIndicator(

                        controller: pageController,  // PageController
                        count:  onbordings.length,
                        // forcing the indicator to use a specific direction
                        effect:  ExpandingDotsEffect(
                            activeDotColor: Colors.brown ,
                            dotHeight: 10,
                            dotColor: Colors.grey.withOpacity(0.5)
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
      ),
    );
  }
}
