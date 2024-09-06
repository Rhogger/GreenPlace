import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/screens/auth/components/textfields/custom_text_field.dart';
import 'package:kitanda/src/config/theme.dart';
import 'package:kitanda/src/screens/bases/base_screen.dart';
import 'package:kitanda/src/screens/auth/screens/sign_up_screen.dart';

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
              image: AssetImage("assets/sign_in_background.png"),
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
                      Text(
                        "Greenplace",
                        style: GoogleFonts.oswald(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "seu jardim de ",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (c) {
                                  return const BaseScreen();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Text(
                            "Entrar",
                            style: GoogleFonts.oswald(color: Colors.white),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Esqueceu a senha?",
                          style: GoogleFonts.oswald(
                              color: CustomColors.terciary.withOpacity(1),
                              fontWeight: FontWeight.w500),
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
                              child: Text(
                                "ou",
                                style: GoogleFonts.oswald(
                                    color: CustomColors.terciary.withOpacity(1),
                                    fontWeight: FontWeight.w500),
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
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (c) {
                                  return const SignUpScreen();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: CustomColors.primary,
                                width: 2,
                              ),
                            ),
                            // backgroundColor: Colors.white
                          ),
                          child: Text(
                            "Criar conta",
                            style: GoogleFonts.oswald(
                              fontSize: 18,
                              color: CustomColors.primary,
                            ),
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
