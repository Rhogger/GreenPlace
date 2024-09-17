import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/screens/auth/components/checkboxs/custom_checkbox_list_tile.dart';
import 'package:kitanda/src/screens/auth/components/textfields/custom_text_field.dart';
import 'package:kitanda/src/config/theme.dart';

import '../../../components/widgets/buttons/back_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sign_in_background.png"),
            colorFilter:
                ColorFilter.mode(Colors.lightBlueAccent, BlendMode.softLight),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Criar uma conta",
                            style: GoogleFonts.oswald(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                          ),
                          Text(
                            "plante uma árvore, traga o verde da vida.",
                            style: GoogleFonts.oswald(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: DraggableScrollableSheet(
                        builder: (BuildContext context,
                            ScrollController scrollController) {
                          return Container(
                            padding: const EdgeInsets.only(
                                right: 32, left: 32, top: 10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(45),
                              ),
                            ),
                            child: ListView(
                              controller: scrollController,
                              children: [
                                Divider(
                                  thickness: 3,
                                  color: CustomColors.terciary,
                                  indent: 110,
                                  endIndent: 110,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 20,
                                  ),
                                ),
                                const CustomTextField(
                                  label: "Nome",
                                  icon: Icons.account_circle,
                                ),
                                const CustomTextField(
                                  label: "E-mail",
                                  icon: Icons.email,
                                ),
                                const CustomTextField(
                                  label: "Senha",
                                  icon: Icons.lock,
                                  isPassword: true,
                                ),
                                const CustomTextField(
                                  label: "Confirmar senha",
                                  icon: Icons.lock,
                                  isPassword: true,
                                ),
                                const CustomCheckboxListTile(
                                  title: 'Atualizações',
                                  subtitle:
                                      'Ao concordar você receberá nossas atualizações por email.',
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Cadastrar",
                                        style: GoogleFonts.oswald(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const BackButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
