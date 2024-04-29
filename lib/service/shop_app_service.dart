import 'package:dio/dio.dart';
import 'package:shop_app/model/banner_model.dart';
import 'package:shop_app/model/categories_model.dart';

class ShopService {
  Dio dio = Dio();

  Future<List<BannerModel>> getShopBanner() async {
    Response response =
        await dio.get('https://student.valuxapps.com/api/banners');

    List<BannerModel> bannerList = [];
    for (var banner in response.data["data"]) {
      BannerModel bannerModel = BannerModel(image: banner["image"]);
      bannerList.add(bannerModel);
    }
    return bannerList;
  }

  Future<List<CategoryModel>> getShopCategorios() async {
    Response response =
        await dio.get('https://student.valuxapps.com/api/categories');
    List<CategoryModel> categoriesList = [];
    for (var item in response.data["data"]["data"]) {
      CategoryModel categoryModel =
          CategoryModel(name: item["name"], image: item["image"]);
      categoriesList.add(categoryModel);
    }
    return categoriesList;
  }
}
