import 'package:expenso/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) => ThemeData(
        primaryColor: AppColors.primary,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: AppColors.background,
        ),
        scaffoldBackgroundColor: AppColors.background,
      );
}
