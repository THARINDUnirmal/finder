import 'package:finder/screens/main_screens/add_locations_screen.dart';
import 'package:finder/screens/main_screens/home_screen.dart';
import 'package:finder/screens/main_screens/profile_screen.dart';
import 'package:finder/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //initial page index
  int _selectedIndex = 0;
  //Bottom navigation bar pages
  final List<Widget> _mainPages = [
    HomeScreen(),
    AddLocationsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/house.svg",
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 0
                        ? AppColors.primaryBlueColor
                        : AppColors.primaryGreyColor,
                    BlendMode.srcIn,
                  ),
                  semanticsLabel: "Home-SVG",
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/map-pin-plus.svg",
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 1
                        ? AppColors.primaryBlueColor
                        : AppColors.primaryGreyColor,
                    BlendMode.srcIn,
                  ),
                  semanticsLabel: "Home-SVG",
                ),
                label: "Add Location",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/bolt.svg",
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 2
                        ? AppColors.primaryBlueColor
                        : AppColors.primaryGreyColor,
                    BlendMode.srcIn,
                  ),
                  semanticsLabel: "Home-SVG",
                ),
                label: "Profile",
              ),
            ],
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            currentIndex: _selectedIndex,
          ),
        ),
      ),
      body: _mainPages[_selectedIndex],
    );
  }
}
