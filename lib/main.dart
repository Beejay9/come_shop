import 'package:come_shop/app/screens/cart_screen.dart';
import 'package:come_shop/app/screens/categories.dart';
import 'package:come_shop/app/screens/checkout_screen.dart';
import 'package:come_shop/app/screens/home_screen.dart';
import 'package:come_shop/app/screens/navbar.dart';
import 'package:come_shop/app/screens/oder_details_screen.dart';
import 'package:come_shop/app/screens/onboarding/about.dart';
import 'package:come_shop/app/screens/onboarding/forgot_password.dart';
import 'package:come_shop/app/screens/onboarding/login.dart';
import 'package:come_shop/app/screens/onboarding/signup.dart';
import 'package:come_shop/app/screens/product_details_screen.dart';
import 'package:come_shop/app/screens/products_screen.dart';
import 'package:come_shop/app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      ensureScreenSize: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NavBar(),
        routes: {
          LoginScreen.routeName: (context) => const LoginScreen(),
          SignupScreen.routeName: (context) => const SignupScreen(),
          ForgotPassword.routeName: (context) => ForgotPassword(),
          AboutScreen.routeName: (context) => const AboutScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          CategoriesScreen.routeName: (context) => CategoriesScreen(),
          ProductsScreen.routeName: (context) => const ProductsScreen(),
          OrderDetailsScreen.routeName: (context) => const OrderDetailsScreen(),
          ProductDetailsScreen.routeName: (context) =>
              const ProductDetailsScreen(),
          CartScreen.routeName: (context) => const CartScreen(),
          CheckoutScreen.routeName: (context) => const CheckoutScreen(),
          NavBar.routeName: (context) => const NavBar(),
        },
      ),
    );
  }
}
