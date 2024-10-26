import 'package:food_panda_ui/app/modules/ui/screens/Creat_Account/create_account.dart';
import 'package:food_panda_ui/app/modules/ui/screens/Home_Screen/home_screen.dart';
import 'package:food_panda_ui/app/modules/ui/screens/Home_Screen/item_screen.dart';
import 'package:food_panda_ui/app/modules/ui/screens/category_page.dart';
import 'package:food_panda_ui/app/routes/routes_name.dart';
import 'package:get/get.dart';
import '../modules/ui/screens/splash_screen.dart';
class RoutesPage {
List <GetPage<dynamic>> routes = [
  GetPage(name: RoutesName.splashScreen, page:()=>SplashScreen()),
  GetPage(name: RoutesName.homeScreen, page:()=>HomeScreen()),
  GetPage(name: RoutesName.itemScreen, page:()=>ItemScreen()),
  GetPage(name: RoutesName.createAccountScreen, page:()=>CreateAccountScreen()),
  GetPage(name: RoutesName.categoryPage, page:()=>CategoryPage())
];
}