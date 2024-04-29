import 'package:flutter/material.dart';
import 'package:shop_app/model/banner_model.dart';

class BannerPageView extends StatelessWidget {
  const BannerPageView({
    super.key,
    required this.bannerList,
  });
  final List<BannerModel> bannerList;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: bannerList.length,
      itemBuilder: (context, index) {
        return Image.network(bannerList[index].image ??
            'https://blog.artsper.com/wp-content/uploads/2022/06/pepefroggie-770x432-2-644x362.jpg');
      },
    );
  }
}
