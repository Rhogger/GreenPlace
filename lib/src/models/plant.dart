import '../enums/categories.dart';
import '../enums/sunlight.dart';
import '../enums/umidity.dart';

class PlantModel {
  String name;
  String description;
  Umidity umidity;
  Sunlight sunlight;
  bool fruitful = false;
  List<Category> categories = [];
  String imageUrl;

  PlantModel({
    required this.name,
    required this.description,
    required this.umidity,
    required this.sunlight,
    required this.categories,
    required this.imageUrl,
  });
}
