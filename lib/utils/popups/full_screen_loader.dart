import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/utils/constants/colors.dart';
import 'package:ui/utils/helpers/helper_functions.dart';

import 'animation_loader.dart';

class FullScreenLoader{
  static void openLoadingDialog(String text, String animation){
    showDialog(context: Get.overlayContext!,
        barrierDismissible: false,

        builder: (_)=> PopScope(
            canPop: false,
            child: Container(
              color: HelperFunctions.isDarkMode(Get.context!)? AppColors.dark: AppColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                   SizedBox(height: 250,child:  AnimationLoaderWidget(text: text,animation: animation,),),
                 
                ],
              ),
            )));
  }

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}


