import 'package:flower_app/core/utils/app_images.dart';

class SweetModel{
  final String images;
  final String title;
  final String dec;
  final int price;
  bool fav;
  SweetModel( {required this.images,required this.title,required this.dec,required this.price,this.fav=false});
}
List<SweetModel> sweets = [
  SweetModel(
  images: AppImages.pieceofcake,
     title: "Piece of cake",
    dec:"Flawor : Creamy" ,
    price: 45,

),
  SweetModel(
      images: AppImages.donuts,
      title: "Donuts",
    dec:"Flawor : Creamy" ,
    price: 45,

  ),
  SweetModel(
    images: AppImages.pieceofcake,
    title: "Piece of cake",
    dec:"Flawor : Creamy" ,
    price: 45,
  ),
  SweetModel(
    images: AppImages.donuts,
    title: "Donuts",
    dec:"Flawor : Creamy" ,
    price: 45,

  ),
  SweetModel(
    images: AppImages.pieceofcake,
    title: "Piece of cake",
    dec:"Flawor : Creamy" ,
    price: 45,
  ),
  SweetModel(
    images: AppImages.donuts,
    title: "Donuts",
    dec:"Flawor : Creamy" ,
    price: 45,

  ),

  SweetModel(
    images: AppImages.pieceofcake,
    title: "Piece of cake",
    dec:"Flawor : Creamy" ,
    price: 45,
  ),

  SweetModel(
    images: AppImages.donuts,
    title: "Donuts",
    dec:"Flawor : Creamy" ,
    price: 45,

  ),

  SweetModel(
    images: AppImages.pieceofcake,
    title: "Piece of cake",
    dec:"Flawor : Creamy" ,
    price: 45,
  ),

  SweetModel(
    images: AppImages.donuts,
    title: "Donuts",
    dec:"Flawor : Creamy" ,
    price: 45,

  ),
  SweetModel(
    images: AppImages.milkshake,
    title: "milkshake",
    dec:'''There are many variations of passages Lorem Ipsum''',
    price: 45,
  ),
  SweetModel(
    images: AppImages.spanishlatte,
    title: "spanishlatte",
    dec:'''There are many variations of passages Lorem Ipsum''',
    price: 45,
  ),
  SweetModel(
    images: AppImages.florevitamin,
    title: "florevitamin",
    dec:'''There are many variations of passages Lorem Ipsum''',
    price: 45,
  ),

  SweetModel(
    images: AppImages.oreomilkshake,
    title: "oreomilkshake",
    dec:'''There are many variations of passages Lorem Ipsum''',
    price: 45,
  ),
  SweetModel(
    images: AppImages.chocolatedrink,
    title: "chocolatedrink",
    dec:'''There are many variations of passages Lorem Ipsum''',
    price: 45,
  ),

];