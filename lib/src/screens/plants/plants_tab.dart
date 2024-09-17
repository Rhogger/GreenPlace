import 'package:flutter/material.dart';

import 'components/plant_category_list.dart';
import '../../components/widgets/texts/subtitle_widget.dart';
import '../../components/widgets/texts/title_widget.dart';
import '../../components/delegates/custom_search_delegate.dart';
import '../../components/widgets/tiles/plant_tile.dart';
import '../../config/app_data.dart';
import '../../config/theme.dart';

class PlantsTab extends StatelessWidget {
  const PlantsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TitleWidget(
          text: 'Plantas',
          color: CustomColors.secondary,
        ),
        actions: [
          IconButton(
            onPressed: () => showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            ),
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
                      child: SubTitleWidget(
                        text: 'Pesquisa Recentes',
                        color: CustomColors.secondary,
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
                          plant: lastSearchList[index],
                          tileBackground: CustomColors.terciary.withOpacity(.3),
                        ),
                        separatorBuilder: (_, index) => const SizedBox(
                          height: 40,
                          width: 40,
                        ),
                        physics: const BouncingScrollPhysics(),
                        itemCount: lastSearchList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
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
