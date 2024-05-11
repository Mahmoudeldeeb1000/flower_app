import 'package:flower_app/core/utils/app_images.dart';

class SweetModel{
  final String images;
  final String title;
  final String dec;
  final int price;
  bool fav;
  SweetModel( {required this.images,required this.title,required this.dec,required this.price,this.fav=false});
}
List<SweetModel> Sweets = [
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


];