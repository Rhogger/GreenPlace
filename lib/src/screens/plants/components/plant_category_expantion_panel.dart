import 'package:flutter/material.dart';

import '../../../components/widgets/texts/subtitle_widget.dart';
import '../../../components/widgets/tiles/plant_tile.dart';
import '../../../config/theme.dart';
import '../../../models/plant.dart';
import '../../../enums/categories.dart';

class PlantCategoryExpansionPanel extends StatefulWidget {
  const PlantCategoryExpansionPanel({
    super.key,
    required this.category,
    required this.backgroundColor,
    required this.filteredPlants,
  });

  final Category category;
  final Color backgroundColor;
  final List<PlantModel> filteredPlants;

  @override
  State<PlantCategoryExpansionPanel> createState() =>
      _PlantCategoryExpansionPanelState();
}

class _PlantCategoryExpansionPanelState
    extends State<PlantCategoryExpansionPanel> {
  @override
  Widget build(BuildContext context) {
    final filteredPlants = widget.filteredPlants;
    final Color color = widget.backgroundColor == CustomColors.secondary
        ? Colors.white
        : CustomColors.secondary;

    return ExpansionTile(
      title: ListTile(
        title: SubTitleWidget(
          text: widget.category.readableName,
          color: color,
        ),
        contentPadding: EdgeInsets.zero,
      ),
      tilePadding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      enableFeedback: true,
      backgroundColor: widget.backgroundColor,
      collapsedBackgroundColor: widget.backgroundColor,
      iconColor: color,
      collapsedIconColor: color,
      textColor: color,
      collapsedTextColor: color,
      children: [
        SizedBox(
          height: 240,
          child: ListView.separated(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 48,
              right: 30,
              left: 30,
            ),
            itemBuilder: (_, index) => PlantTile(
              plant: filteredPlants[index],
              tileBackground: CustomColors.terciary.withOpacity(.3),
            ),
            separatorBuilder: (_, index) => const SizedBox(
              height: 40,
              width: 40,
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: filteredPlants.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
