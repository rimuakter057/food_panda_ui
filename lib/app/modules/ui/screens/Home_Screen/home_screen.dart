import 'package:flutter/material.dart';
import 'package:food_panda_ui/app/modules/ui/utils/color.dart';
import 'package:get/get.dart';

import '../../global_widgets/common_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var medium= Theme.of(context).textTheme.bodyMedium;
    var small = Theme.of(context).textTheme.bodySmall;
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECEF),
    body: Column(
      children: [
        CommonAppbar(medium: medium),
        SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height*.15,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Food Delivery",style: medium,),
                              Text("Order from your favourite\nrestaurants and home chefs",style: small,),
                            ],
                          ),
                          Image.asset("assets/images/burger.png",height: 100,width: 100,),
                        ],
                      ),
                    ) ,
                  ),
                  SizedBox(height: Get.height*.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Get.height*.25,
                        width: Get.width*0.45,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shops",style: medium,),
                              Text("Everyday essential",style: small,),
                              SizedBox(  height: Get.height*.05,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(),
                                  Image.asset("assets/images/image _one.png",
                                    height: Get.height*.05,
                                    width: Get.width*0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: Get.height*.12,
                            width: Get.width*0.45,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,bottom: 3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Pick up",style: medium?.copyWith(fontSize: Get.height*.027, ),),
                                      Text("enjoy 50% off",style: small?.copyWith(fontSize: Get.height*.017, ),),

                                    ],
                                  ),
                                  Image.asset("assets/images/image_two.png",
                                    height: Get.height*.07,
                                    width: Get.width*.15,
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),

                          ),
                          SizedBox(height: Get.height*.02,),
                          Container(
                            height: Get.height*.12,
                            width: Get.width*0.45,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dine in",style: medium?.copyWith(fontSize: Get.height*.027, ),),
                                      Text("Save 70% on",style: small?.copyWith(fontSize: Get.height*.017, ),),
                                    ],
                                  ),
                                  Image.asset("assets/images/image_three.png",
                                    height: Get.height*.07,
                                    width: Get.width*0.15,
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height*.02,),
                  Text("Your Daily Deals",style: medium,),
                  SizedBox(height: Get.height*.01,),
                  SizedBox(
                    height: Get.height*.1,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                      return Image.asset("assets/images/item_one.png",
                       height:  Get.height*.08,
                      );
                    },
                        separatorBuilder: (context,index){
                      return SizedBox(width:Get.width*.05,);
                        }, itemCount: 10),
                  ),
                  SizedBox(height: Get.height*.02,),
                  Text("Cuisines",style: medium,),
                  SizedBox(height: Get.height*.01,),
                  SizedBox(
                    height: Get.height*.08,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Image.asset("assets/images/item_two.png",
                            height:  Get.height*.05,
                          );
                        },
                        separatorBuilder: (context,index){
                          return SizedBox(width:Get.width*.05,);
                        }, itemCount: 10),
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


