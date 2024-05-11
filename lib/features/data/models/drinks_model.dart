import 'package:flower_app/core/utils/app_images.dart';

class DrinkModel {
String images;
String title;
DrinkModel({required this.images,required this.title});
}

List<DrinkModel>drinks=[
  DrinkModel(
      images: AppImages.oreomilkshake,
      title: "Oreo Milkshake"
  ),
  DrinkModel(
      images: AppImages.florevitamin,
      title: "Flore Vitamin"
  ),
  DrinkModel(
      images: AppImages.spanishlatte,
      title: "Spanish latte"
  ),
  DrinkModel(
      images: AppImages.chocolatedrink,
      title: "Chocolate Drink"
  ),
  DrinkModel(
      images: AppImages.oreomilkshake,
      title: "Oreo Milkshake"
  ),

  DrinkModel(
      images: AppImages.spanishlatte,
      title: "Spanish latte"
  ),
];