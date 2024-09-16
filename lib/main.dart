import 'package:flutter/material.dart';
import 'package:store_app/pages/home/home_page.dart';
import 'package:store_app/pages/onboarding/on_boarding.dart';
import 'package:store_app/pages/update/update_product_page.dart';

void main() {
  runApp(const MyApp(

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

         routes: {
        HomeScreen.id : (context) => HomeScreen(),
        UpdateProductPage.id : (context) => UpdateProductPage(),

      },
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}

