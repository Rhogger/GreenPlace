import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/widgets/texts/title_widget.dart';
import '../../config/theme.dart';
import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(Routes.signinRoute),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          CustomColors.primary.withOpacity(.6),
          CustomColors.secondary,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      alignment: Alignment.center,
      child: const Column(
        children: [
          Image(
            image: AssetImage('assets/images/app/logo_splash.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 272),
            child: TitleWidget(
              text: 'GreenPlace',
              fontSize: 36,
            ),
          ),
          CircularProgressIndicator(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
