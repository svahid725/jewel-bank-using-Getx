import 'package:jewel_bank/gen/assets.gen.dart';

class ImageDataModel{
  final String name ;
  final String imageUrl;

  ImageDataModel(this.name, this.imageUrl);
}

class ImageData {
  static List<ImageDataModel> get data => [
    ImageDataModel('Catherine', Assets.img.home.img.path),
    ImageDataModel('Allan', Assets.img.home.img1.path),
    ImageDataModel('Kimberly', Assets.img.home.img2.path),
    ImageDataModel('Joanna', Assets.img.home.img3.path),
    ImageDataModel('Vakiury', Assets.img.home.img4.path)
  ];
}