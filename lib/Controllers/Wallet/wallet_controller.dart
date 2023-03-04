import 'package:get/get.dart';

class WalletScreenController extends GetxController {
  final RxBool firstButton = false.obs;
  final RxBool secondButton = false.obs;
  final RxBool thirdButton = false.obs;
  final RxInt currentPage = 0.obs;

  List<String> cards = [
    'img',
    'img1',
  ];
}
