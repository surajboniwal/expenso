import 'package:expenso/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:expenso/presentation/screens/transactions/transactions_screen.dart';
import 'package:expenso/presentation/theme/app_colors.dart';
import 'package:expenso/presentation/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'domain/cubit/navigation_cubit.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return Text(
                context.read<NavigationCubit>().title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: AppColors.background,
              onTap: (index) {
                context.read<NavigationCubit>().changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  label: 'Dashboard',
                  icon: SvgPicture.asset(
                    AppIcons.dashboard,
                    color: context.read<NavigationCubit>().color(0),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Transactions',
                  icon: SvgPicture.asset(
                    AppIcons.transactions,
                    color: context.read<NavigationCubit>().color(1),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Accounts',
                  icon: SvgPicture.asset(
                    AppIcons.accounts,
                    color: context.read<NavigationCubit>().color(2),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Settings',
                  icon: SvgPicture.asset(
                    AppIcons.settings,
                    color: context.read<NavigationCubit>().color(3),
                  ),
                ),
              ],
            );
          },
        ),
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return IndexedStack(
              index: state.index,
              children: [
                const DashboardScreen(),
                const TransactionsScreen(),
                Container(
                  alignment: Alignment.center,
                  child: const Text('Accounts'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text('Settings'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
