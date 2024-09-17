import 'package:flutter/material.dart';

import 'plant_category_expantion_panel.dart';
import '../../../config/app_data.dart';
import '../../../config/theme.dart';
import '../../../enums/categories.dart';

class PlantCategoryList extends StatelessWidget {
  const PlantCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final filteredCategories = Category.values.where((category) {
      return allPlantsList.any((plant) =>
          plant.categories.contains(category) && plant.categories.length > 1);
    }).toList();

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: filteredCategories.length,
      itemBuilder: (context, index) {
        final backgroundColor =
            index.isEven ? CustomColors.secondary : Colors.white;
        final filteredPlants = allPlantsList
            .where(
                (plant) => plant.categories.contains(filteredCategories[index]))
            .toList();

        return PlantCategoryExpansionPanel(
          category: filteredCategories[index],
          backgroundColor: backgroundColor,
          filteredPlants: filteredPlants,
        );
      },
    );
  }
}
