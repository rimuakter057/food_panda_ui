import 'package:flutter/material.dart';
import 'package:food_panda_ui/app/modules/ui/utils/color.dart';
import 'package:get/get.dart';
import '../../global_widgets/common_appbar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var medium = Theme.of(context).textTheme.bodyMedium;
    var small = Theme.of(context).textTheme.bodySmall;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          CommonAppbar(
            medium: medium,
            backgroundColor: Colors.transparent,
            iconColor: AppColors.primaryColor,
            text: "Birol Dinajpur",
            textColor: AppColors.primaryColor,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height * .08,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "Eat a like pro",
                        style: medium?.copyWith(color: AppColors.backgroundColor),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height*.02,),
                  SizedBox(
                    height: Get.height*.15,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Image.asset("assets/images/item_four.png",
                            height:  Get.height*.1,
                          );
                        },
                        separatorBuilder: (context,index){
                          return SizedBox(width:Get.width*.05,);
                        }, itemCount: 10),
                  ),
                  SizedBox(height: Get.height*.02,),
                  Text("See All",style: medium,),
                  SizedBox(
                 width: Get.width,
                 height: Get.height*.45,
                 child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                     scrollDirection: Axis.vertical,
                     itemCount: 10,
                     shrinkWrap: true,
                     itemBuilder: (context,index){
                   return   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.asset("assets/images/item_three.png",
                         height:  Get.height*.2,
                       fit: BoxFit.cover,
                       width: Get.width,
                       ),
                     ),
                   );
                       /*Container(
                     height: Get.height*.3,
                     decoration: BoxDecoration(
                       color: Colors.red,
                       border: Border.all(width: 1,color: Colors.grey),
                       borderRadius: const BorderRadius.all(Radius.circular(30),),
                     ),
                   );*/

                 }),
               )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
