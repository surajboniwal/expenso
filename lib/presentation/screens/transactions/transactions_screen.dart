import 'dart:math';

import 'package:expenso/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  Color transactionColor(int index) => index % 2 == 0 ? AppColors.primary : AppColors.red;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      separatorBuilder: (context, index) => const SizedBox(height: 8.0),
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Random().nextInt(2) == 0) ...{
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 16.0, bottom: 16.0, top: 8.0),
              child: Row(
                children: [
                  Text(
                    '${index + 10}th May 2022',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '+\$${Random().nextInt(2199) + 10}',
                    style: const TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
          },
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.grey.withOpacity(.4)),
            ),
            child: Row(
              children: [
                Container(
                  height: 36.0,
                  width: 3.0,
                  decoration: BoxDecoration(
                    color: transactionColor(index),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Transaction title',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'Transaction details description',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    '\$${Random().nextInt(2199) + 10}',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
