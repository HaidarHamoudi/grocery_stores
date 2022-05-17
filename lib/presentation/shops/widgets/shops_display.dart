import 'package:flutter/material.dart';
import 'package:grocery_stores/app/extensions.dart';
import 'package:grocery_stores/domain/model/model.dart';
import 'package:grocery_stores/presentation/resources/strings_manager.dart';
import 'package:grocery_stores/presentation/resources/values_manager.dart';
import 'package:grocery_stores/presentation/shops/widgets/shop_info.dart';
import 'package:grocery_stores/presentation/shops/widgets/shop_item.dart';

import '../../resources/routes_manager.dart';

class ShopsDisplay extends StatelessWidget {
  const ShopsDisplay({Key? key, required this.shopsData}) : super(key: key);
  final ShopsData shopsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.groceriesStores),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
                vertical: AppPadding.p8,
              ),
              child: Text('Results'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shopsData.result.length,
              itemBuilder: (context, index) => ShopItem(
                shopsData,
                onTap: () {
                  context.push(ShopInfoView(shopsData,index));
                },
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
