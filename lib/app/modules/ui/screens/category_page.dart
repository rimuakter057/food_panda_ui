import 'package:flutter/material.dart';
import 'package:food_panda_ui/app/controllers/category_controller.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text("Here i am"),
      Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: controller.categoryList.length,
            itemBuilder: (context,index){
              var getData = controller.categoryList[index];
          return ListTile(
            title: Text(getData.name.toString()),
            subtitle: Text(getData.description.toString()),
          );
        }),
      )
      ],),
    );
  }
}
