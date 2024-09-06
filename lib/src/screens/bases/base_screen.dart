import 'package:flutter/material.dart';
import 'package:kitanda/src/config/theme.dart';
import 'package:kitanda/src/screens/home/home_tab.dart';
import 'package:kitanda/src/screens/irrigation/irrigation_tab.dart';
import 'package:kitanda/src/screens/plants/plants_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTab(),
          const IrrigationTab(),
          PlantsTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        backgroundColor: CustomColors.secondary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.6),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.sunny), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.water_drop), label: 'Regas'),
          BottomNavigationBarItem(icon: Icon(Icons.spa), label: 'Plantas'),
        ],
      ),
    );
  }
}
