import 'package:flutter/material.dart';
import 'package:shoes_shop/constants/color.dart';

import '../../resources/assets_manager.dart';
import '../../resources/font_manager.dart';
import '../../controllers/route_manager.dart';
import '../../resources/styles_manager.dart';
import '../../resources/values_manager.dart';

class AccountTypeScreen extends StatelessWidget {
  const AccountTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // account type
    GestureDetector accountType({
      required String accountTitle,
      required String routeName,
    }) {
      return GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(routeName),
        child: Column(
          children: [
            Image.asset(
              AssetManager.avatar,
              width: 100,
              color: accentColor,
            ),
            const SizedBox(height: 10),
            Text(
              accountTitle,
              style: getRegularStyle(color: accentColor),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(Icons.person_outline, color:accentColor),
                Text(
                'Select account type',
                style: getBoldStyle(
                  color: accentColor,
                  fontSize: FontSize.s18,
                ),
              ),
        ]
            ),
            const SizedBox(height: AppSize.s30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Customer Login
                accountType(
                  accountTitle: 'Customer',
                  routeName: RouteManager.customerMainScreen,
                ),

                // Seller Login
                accountType(
                  accountTitle: 'Seller',
                  routeName: RouteManager.sellerMainScreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
