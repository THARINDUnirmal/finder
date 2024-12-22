import 'package:finder/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static ThemeData theme = ThemeData(
    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryBlueAssentColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.primarywhiteColor,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    ),
    //bottom navigation bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryBlackColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.primaryBlueColor,
      unselectedItemColor: AppColors.primaryGreyColor,
      type: BottomNavigationBarType.fixed,
    ),
    //floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryGreenColor,
    ),
    //font family
    fontFamily: GoogleFonts.lato().fontFamily,
  );
}
