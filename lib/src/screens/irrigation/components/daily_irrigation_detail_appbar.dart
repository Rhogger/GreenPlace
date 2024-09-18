import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'watered_plant_tile.dart';
import '../../../components/widgets/texts/title_widget.dart';
import '../../../config/theme.dart';
import '../../../config/app_data.dart';

class DailyIrrigationDetailAppbar extends StatefulWidget {
  const DailyIrrigationDetailAppbar({super.key});

  @override
  State<DailyIrrigationDetailAppbar> createState() =>
      _DailyIrrigationDetailAppbarState();
}

class _DailyIrrigationDetailAppbarState
    extends State<DailyIrrigationDetailAppbar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      expandedHeight: size.height / 2.5,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            color: CustomColors.secondary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: TitleWidget(
                    text: 'Rega de hoje',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 48,
                ),
                height: 240,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  itemBuilder: (_, index) => WateredPlantTile(
                    imageUrl: myWateredPlantsList[index].imageUrl,
                    tileBackground: Colors.white54,
                  ),
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 36,
                    width: 36,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemCount: myWateredPlantsList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Container(
            width: 60.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: CustomColors.terciary.withOpacity(.4),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
    );
  }
}
