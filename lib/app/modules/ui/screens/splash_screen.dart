import 'package:flutter/material.dart';
import 'package:food_panda_ui/app/modules/ui/utils/color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var style = GoogleFonts.montserrat(
       textStyle: TextStyle(
         color: const Color(0xFFFFFFFF),
         fontSize: Get.height*.045,
         fontWeight: FontWeight.w600,
       )
       );
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_image.png"),
            SizedBox(height: Get.height*.01,),
            Text("foodpanda",style:style),
          ],
        ),
      ),
    );
  }
}
