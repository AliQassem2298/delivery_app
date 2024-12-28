import 'package:flutter/material.dart';

import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/view/address/add.dart';
import 'package:my_project/view/address/address.dart';


import 'package:my_project/view/screens/auth/login.dart';
import 'package:my_project/view/screens/cart.dart';
import 'package:my_project/view/screens/homescreen.dart';
import 'package:my_project/view/screens/onbording.dart';
import 'package:my_project/view/screens/auth/sign up.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRout.login: (context) => const login(),
  AppRout.onbording: (context) => const Onbording(),
  AppRout.signup: (context) => const Signup(),
  AppRout.home: (context) => const Homescreen(),
  AppRout.cart: (context) => const Cart(),
   AppRout.address: (context) => const Address(),
    AppRout.add: (context) => const Add(),
};
