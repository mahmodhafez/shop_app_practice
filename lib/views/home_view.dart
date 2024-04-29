import 'package:flutter/material.dart';
import 'package:shop_app/service/shop_app_service.dart';
import 'package:shop_app/widget/banner_page_view.dart';
import 'package:shop_app/widget/category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        title: const Text(
          'Shop App',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 230,
              child: FutureBuilder(
                future: ShopService().getShopBanner(),
                builder: (context, snapshot) {
                  return BannerPageView(
                    bannerList: snapshot.data ?? [],
                  );
                },
              )),
          const Text(
            '    Categories ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 140,
            child: FutureBuilder(
              future: ShopService().getShopCategorios(),
              builder: (context, snapshot) {
                return CategoriesListView(
                  categoiesList: snapshot.data ?? [],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
