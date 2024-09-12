import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/config/app_data.dart';
import 'package:kitanda/src/config/theme.dart';
import 'package:kitanda/src/components/tiles/plant_tile.dart';

import '../../components/delegates/custom_search_delegate.dart';
import 'components/all_plants_category_expantion_panel.dart';
import 'components/plant_category_list.dart';

class PlantsTab extends StatelessWidget {
  const PlantsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Plantas'.toUpperCase(),
          style: GoogleFonts.oswald(
            color: CustomColors.secondary,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            color: CustomColors.secondary,
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        top: 48,
                        right: 30,
                        left: 30,
                      ),
                      child: Text(
                        'Pesquisa Recentes'.toUpperCase(),
                        style: GoogleFonts.oswald(
                          color: CustomColors.secondary,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 240,
                      color: Colors.white,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 30,
                        ),
                        itemBuilder: (_, index) => PlantTile(
                          imageUrl: lastSearchList[index].imageUrl,
                          tileBackground: CustomColors.terciary.withOpacity(.3),
                        ),
                        separatorBuilder: (_, index) => const SizedBox(
                          height: 40,
                          width: 40,
                        ),
                        itemCount: lastSearchList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const AllPlantsCategoryExpansionPanel(),
                    const PlantCategoryList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
