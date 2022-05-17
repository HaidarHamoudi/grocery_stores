import 'package:flutter/material.dart';
import 'package:grocery_stores/app/extensions.dart';
import 'package:grocery_stores/presentation/resources/values_manager.dart';
import 'package:grocery_stores/presentation/shops/widgets/gap.dart';

import '../../../domain/model/model.dart';
import 'hosted_image.dart';

class ShopItem extends StatelessWidget {
  const ShopItem(this.shopsData,
      {required this.onTap, Key? key, required this.index})
      : super(key: key);
  final ShopsData shopsData;
  final Function onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      margin: const EdgeInsets.symmetric(
          vertical: AppMargin.m8, horizontal: AppMargin.m16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: AppSize.s7),
          Hero(
            tag: ObjectKey(shopsData.result.elementAt(index).id),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.s8),
              ),
              child: HostedImage(
                  shopsData.result.elementAt(index).coverPhoto,
                  height: 200),
            ),
          ),
          const SizedBox(height: AppSize.s7),
          Text(shopsData.result.elementAt(index).shopName!.en,
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: AppSize.s7),
          Row(
            children: [
              const Icon(Icons.location_on_rounded,size: AppSize.s18),
              const Gap(2),
              Text(
                shopsData.result.elementAt(index).address!.country + ", " +shopsData.result.elementAt(index).address!.city,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ],
      ),
    ).onTap(() => onTap());
  }
}
