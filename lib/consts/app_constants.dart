//Services
import '../services/assets_manager.dart';

//Models
import '../models/category_model.dart';

class AppConstants {
  static const String productImageUrl =
      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';
  static List<String> images = [AssetsManager.banner1, AssetsManager.banner2];

  static List<CategoryModel> categories = [
    CategoryModel(
      id: AssetsManager.mobiles,
      image: AssetsManager.mobiles,
      name: "Phones",
    ),
    CategoryModel(
      id: AssetsManager.electronics,
      image: AssetsManager.electronics,
      name: "Electronics",
    ),
    CategoryModel(
      id: AssetsManager.cosmetics,
      image: AssetsManager.cosmetics,
      name: "Cosmetics",
    ),
    CategoryModel(
      id: AssetsManager.shoes,
      image: AssetsManager.shoes,
      name: "Shoes",
    ),
    CategoryModel(
      id: AssetsManager.watch,
      image: AssetsManager.watch,
      name: "Accessories",
    ),
    CategoryModel(
      id: AssetsManager.book,
      image: AssetsManager.book,
      name: "Books",
    ),
    CategoryModel(
      id: AssetsManager.fashion,
      image: AssetsManager.fashion,
      name: "Fashion",
    ),
    CategoryModel(
      id: AssetsManager.pc,
      image: AssetsManager.pc,
      name: "Computers",
    ),
  ];
}
