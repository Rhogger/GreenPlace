import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/config/app_data.dart';

import '../../../components/tiles/plant_tile.dart';
import '../../../config/theme.dart';
import '../../../models/plant.dart';
import '../../../enums/categories.dart';

class PlantCategoryExpansionPanel extends StatefulWidget {
  final Category category;
  final Color backgroundColor;

  const PlantCategoryExpansionPanel({
    super.key,
    required this.category,
    required this.backgroundColor,
  });

  @override
  State<PlantCategoryExpansionPanel> createState() =>
      _PlantCategoryExpansionPanelState();
}

class _PlantCategoryExpansionPanelState
    extends State<PlantCategoryExpansionPanel> {
  @override
  Widget build(BuildContext context) {
    List<PlantModel> filteredPlants = allPlantsList
        .where((plant) => plant.categories.contains(widget.category))
        .toList();

    return ExpansionTile(
      title: ListTile(
        title: Text(widget.category.readableName.toUpperCase()),
        titleTextStyle: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: EdgeInsets.zero,
      ),
      tilePadding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      enableFeedback: true,
      backgroundColor: widget.backgroundColor,
      collapsedBackgroundColor: widget.backgroundColor,
      iconColor: widget.backgroundColor == CustomColors.secondary
          ? Colors.white
          : CustomColors.secondary,
      collapsedIconColor: widget.backgroundColor == CustomColors.secondary
          ? Colors.white
          : CustomColors.secondary,
      textColor: widget.backgroundColor == CustomColors.secondary
          ? Colors.white
          : CustomColors.secondary,
      collapsedTextColor: widget.backgroundColor == CustomColors.secondary
          ? Colors.white
          : CustomColors.secondary,
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
              imageUrl: filteredPlants[index].imageUrl,
              tileBackground: CustomColors.terciary.withOpacity(.3),
            ),
            separatorBuilder: (_, index) => const SizedBox(
              height: 40,
              width: 40,
            ),
            itemCount: filteredPlants.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
