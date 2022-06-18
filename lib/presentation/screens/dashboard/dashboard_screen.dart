import 'package:expenso/presentation/theme/app_colors.dart';
import 'package:expenso/presentation/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppIcons.emptyDashboard,
            height: 200,
          ),
          const SizedBox(height: 32.0),
          const Text(
            'Your dashboard looks empty',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Add widgets to your dashboard to make it more personal',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.grey,
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: AppColors.primary,
            ),
            icon: const Icon(Icons.add),
            label: const Text('Add a widget'),
          ),
        ],
      ),
    );
  }
}
