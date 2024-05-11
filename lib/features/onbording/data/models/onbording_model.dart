import 'package:flower_app/core/utils/app_images.dart';

class OnbordingModel {
  final String backgroundImage;
  final String image;
  final String title;
  final String desc;
  final String textButton;
  OnbordingModel({
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.desc,
    required this.textButton,
  });
}
List<OnbordingModel> onbordings=[
  OnbordingModel(
      backgroundImage: AppImages.onbording1,
      image: AppImages.donuts,
      title: "Donuts",
      desc: "Made by hand, from scratch \n with love",
      textButton: "Next"),
  OnbordingModel(
      backgroundImage: AppImages.onbording2,
      image: AppImages.pieceofcake,
      title: "Piece of cake",
      desc: "Made by hand, from scratch \n with love",
      textButton: "Next"),
  OnbordingModel(
      backgroundImage: AppImages.onbording3,
      image: AppImages.milkshake,
      title: "MilkSHake",
      desc: "Made by hand, from scratch \n with love",
      textButton: "Get Started"),
];