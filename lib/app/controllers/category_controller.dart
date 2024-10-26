

import 'package:food_panda_ui/app/models/category_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
RxList <CategoryModel> categoryList =<CategoryModel> [
  CategoryModel(
    name: "Burger",
    id:1,
    description: "this is burger",
    price: 500,
    rating: 4.5
  ),
  CategoryModel(
      name: "Burger",
      id:2,
      description: "this is burger",
      price: 500,
      rating: 4.5
  ),
  CategoryModel(
      name: "Burger",
      id:3,
      description: "this is burger",
      price: 500,
      rating: 4.5
  ),
  CategoryModel(
      name: "Burger",
      id:4,
      description: "this is burger",
      price: 500,
      rating: 4.5
  ),
  CategoryModel(
      name: "Burger",
      id:5,
      description: "this is burger",
      price: 500,
      rating: 4.5
  ),

].obs;

/*showCategory(CategoryModel categoryModel){
  categoryList.add(categoryModel);
}*/

}