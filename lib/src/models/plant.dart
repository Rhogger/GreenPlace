import 'package:kitanda/src/enums/categories.dart';
import 'package:kitanda/src/enums/sunlight.dart';
import 'package:kitanda/src/enums/umidity.dart';

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
