import 'package:get/get.dart';

class MainBannerController extends GetxController{
  static MainBannerController get instance => Get.find();

final carouselCurrentIndex = 0.obs;

void updatePageIndicator(index){
  carouselCurrentIndex.value = index;
}







}