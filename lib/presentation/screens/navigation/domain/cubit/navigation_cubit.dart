import 'package:expenso/presentation/theme/app_colors.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.index(0));

  void changeIndex(int index) {
    emit(NavigationState.index(index));
  }

  String get title {
    String title;
    switch (state.index) {
      case 0:
        title = 'Dashboard';
        break;
      case 1:
        title = 'Transactions';
        break;
      case 2:
        title = 'Accounts';
        break;
      case 3:
        title = 'Settings';
        break;
      default:
        title = '';
    }
    return title;
  }

  Color color(int index) => state.index == index ? AppColors.primary : AppColors.grey;
}
