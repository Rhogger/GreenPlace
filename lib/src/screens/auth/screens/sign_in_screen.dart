import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/textfields/custom_text_field.dart';
import '../../../routes/routes.dart';
import '../../../components/styles/buttons.dart';
import '../../../components/widgets/texts/button_text_widget.dart';
import '../../../components/widgets/texts/simple_text_widget.dart';
import '../../../components/widgets/texts/title_widget.dart';
import '../../../config/theme.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/app/sign_in_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TitleWidget(
                        text: "Greenplace",
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SimpleTextWidget(
                            text: "seu jardim de ",
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          DefaultTextStyle(
                            style: GoogleFonts.oswald(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText("calatheas",
                                    speed: Durations.short2),
                                TyperAnimatedText("samambaias",
                                    speed: Durations.short2),
                                TyperAnimatedText("marantas",
                                    speed: Durations.short2),
                                TyperAnimatedText("begônias",
                                    speed: Durations.short2),
                                TyperAnimatedText("jades",
                                    speed: Durations.short2),
                                TyperAnimatedText("cactos",
                                    speed: Durations.short2),
                              ],
                              repeatForever: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomTextField(
                        label: "Email",
                        icon: Icons.email,
                      ),
                      const CustomTextField(
                        label: "Senha",
                        icon: Icons.lock,
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => Get.offNamed(Routes.baseRoute),
                          style: ButtonProps.filledRoundedElevated(),
                          child: const ButtonTextWidget(
                            text: "Entrar",
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: ButtonTextWidget(
                          text: "Esqueceu a senha?",
                          color: CustomColors.terciary.withOpacity(1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: CustomColors.terciary.withOpacity(.5),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: SimpleTextWidget(
                                text: "ou",
                                color: CustomColors.terciary.withOpacity(1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: CustomColors.terciary.withOpacity(.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => Get.toNamed(Routes.signupRoute),
                          style: ButtonProps.outlinedRoundedElevated(),
                          child: ButtonTextWidget(
                            text: "Criar conta",
                            color: CustomColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
