
import 'package:flutter/material.dart';
import 'package:food_panda_ui/app/modules/ui/utils/color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/routes/routes_name.dart';
import 'app/routes/routes_page.dart';

void main() {
  runApp(const FoodPandaUi());
}

class FoodPandaUi extends StatelessWidget {
  const FoodPandaUi({super.key});

  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
       bodyMedium: GoogleFonts.montserrat(
         textStyle: TextStyle(
           fontSize:MediaQuery.sizeOf(context).height*.035,
           fontWeight: FontWeight.w600,
           color: AppColors.blackColor,
         )
       ),
            bodySmall: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height*.022,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              )
            )

        )
      ),
      debugShowCheckedModeBanner: false,
      getPages:RoutesPage().routes,
      initialRoute: RoutesName.categoryPage,
    );
  }
}
