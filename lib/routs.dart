import 'package:get/get.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/core/middleware/auth_middleware.dart';
import 'package:my_project/view/screens/auth/login.dart';
import 'package:my_project/view/screens/auth/sign up.dart';
import 'package:my_project/view/screens/homescreen.dart';
import 'package:my_project/view/screens/language.dart';
import 'package:my_project/view/screens/onbording.dart';
import 'package:my_project/view/screens/cart.dart';
import 'package:my_project/view/address/address.dart';
import 'package:my_project/view/address/add.dart';

List<GetPage> routes = [
  GetPage(
    name: AppRout.onbording,
    page: () => const Onbording(),
  ),
  GetPage(
    name: AppRout.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRout.signup,
    page: () => const Signup(),
  ),
  GetPage(
    name: AppRout.language,
    page: () => const Language(),
    middlewares: [AuthMiddleware()], // التحقق من حالة التوكين

  ),
  GetPage(
    name: AppRout.home,
    page: () => const Homescreen(),
  ),
  GetPage(
    name: AppRout.cart,
    page: () => const Cart(),
  ),
  GetPage(
    name: AppRout.address,
    page: () => const Address(),
  ),
  GetPage(
    name: AppRout.add,
    page: () => const Add(),
  ),
];
