import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../../config/theme.dart';

class DryWaveWidget extends StatelessWidget {
  const DryWaveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      waveFrequency: .6,
      config: CustomConfig(
        gradients: [
          [
            CustomColors.secondary.withOpacity(.3),
            CustomColors.primary.withOpacity(.2)
          ],
          [
            CustomColors.secondary.withOpacity(.2),
            CustomColors.primary.withOpacity(.2)
          ],
          [
            CustomColors.secondary.withOpacity(.2),
            CustomColors.primary.withOpacity(.2)
          ],
          [
            CustomColors.secondary.withOpacity(.3),
            CustomColors.primary.withOpacity(.2)
          ],
        ],
        durations: [12000, 9000, 9400, 10000],
        heightPercentages: [
          1,
          1.03,
          .9,
          .95,
        ],
      ),
      size: const Size(double.infinity, double.infinity),
    );
  }
}
