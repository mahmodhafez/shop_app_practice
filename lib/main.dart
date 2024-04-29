import 'package:flutter/material.dart';
import 'package:shop_app/service/shop_app_service.dart';
import 'package:shop_app/views/home_view.dart';

void main() {
  runApp(MyApp());
  ShopService().getShopBanner();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
