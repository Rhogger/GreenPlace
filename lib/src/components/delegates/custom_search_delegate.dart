import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> plantsName = [
    'aaaaa',
    'bbbbb',
    'ccccc',
    'ddddd',
    'fffff',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      );

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (var plant in plantsName) {
      if (plant.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(plant);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(
              result,
              style: GoogleFonts.oswald(
                color: CustomColors.secondary,
              ),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var plant in plantsName) {
      if (plant.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(plant);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(
              result,
              style: GoogleFonts.oswald(
                color: CustomColors.secondary,
                fontSize: 18,
              ),
            ),
          );
        });
  }

  @override
  InputDecorationTheme? get searchFieldDecorationTheme =>
      const InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.blue), // Cor da borda quando o campo está focado
        ),
      );

  @override
  String? get searchFieldLabel => 'Pesquisar...';

  @override
  TextStyle? get searchFieldStyle => GoogleFonts.oswald(
        color: Colors.white,
        fontSize: 18,
      );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: CustomColors.secondary,
      ),
      hintColor: Colors.white60,
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
