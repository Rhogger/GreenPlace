import 'package:flutter/material.dart';

import '../create_plant/create_plant_screen.dart';
import '../../config/padding.dart';
import '../../config/app_data.dart';
import '../../config/theme.dart';
import '../../components/functions/navigate.dart';
import '../../components/widgets/texts/medium_text_widget copy.dart';
import '../../components/widgets/buttons/add_button_widget.dart';
import '../../components/widgets/texts/subtitle_widget.dart';
import '../../components/widgets/tiles/plant_tile.dart';
import '../../screens/irrigation/components/daily_irrigation_detail_appbar.dart';

class IrrigationTab extends StatelessWidget {
  const IrrigationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          const DailyIrrigationDetailAppbar(),
          SliverPadding(
            padding: paddingLessBottom,
            sliver: SliverToBoxAdapter(
              child: ListTile(
                trailing: AddButtonWidget(
                  backgroundColor: CustomColors.secondary,
                  iconColor: Colors.white,
                  iconSize: 36,
                  onPressed: () => navigatePush(
                    context,
                    const CreatePlantScreen(),
                  ),
                ),
                title: SubTitleWidget(
                  text: 'Minhas plantas',
                  color: CustomColors.secondary,
                  fontSize: 26,
                ),
                subtitle: MediumTextWidget(
                  text: 'Você possui ${myPlantsList.length} plantas',
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: paddingAll,
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => PlantTile(
                plant: myPlantsList[index],
                tileBackground: CustomColors.secondary.withOpacity(.5),
              ),
              itemCount: myPlantsList.length,
            ),
          ),
        ],
      ),
    );
  }
}
