import 'package:flutter/material.dart';
import 'package:grocery_stores/app/extensions.dart';
import 'package:grocery_stores/presentation/resources/color_manager.dart';
import 'package:grocery_stores/presentation/resources/font_manager.dart';
import 'package:grocery_stores/presentation/resources/values_manager.dart';

import '../../../domain/model/model.dart';
import 'gap.dart';
import 'hosted_image.dart';

class ShopInfoView extends StatelessWidget {
  const ShopInfoView(this.shopsData, this.index, {Key? key}) : super(key: key);
  final ShopsData shopsData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: AppSize.s270,
                  child: PageView(
                    children: shopsData.result
                        .map(
                          (e) => Hero(
                            tag: ObjectKey(index),
                            child: HostedImage(
                              shopsData.result.elementAt(index).coverPhoto,
                              width: context.width,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppPadding.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shopsData.result.elementAt(index).shopName!.en,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: FontSize.s20)),
                      const SizedBox(height: AppSize.s7),
                      Row(
                        children: [
                          SizedBox(
                            width: context.width / 1.09,
                            child: Text(
                              shopsData.result.elementAt(index).description!.en,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontSize: FontSize.s18,
                                    color: ColorManager.darkGray,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.timer,
                            size: AppSize.s40,
                          ),
                          const Gap(2),
                          Text(
                            shopsData.result
                                .elementAt(index)
                                .estimatedDeliveryTime,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: FontSize.s16),
                          ),
                        ],
                      ),
                      Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            size: AppSize.s40,
                          ),
                          const Gap(2),
                          Text(
                            shopsData.result.elementAt(index).address!.city,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: FontSize.s16),
                          ),
                        ],
                      ),
                      const Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.minimize,
                            size: AppSize.s40,
                          ),
                          const Gap(2),
                          Text(
                            shopsData.result
                                    .elementAt(index)
                                    .minimumOrder!
                                    .amount
                                    .toString() +
                                " " +
                                shopsData.result
                                    .elementAt(index)
                                    .minimumOrder!
                                    .currency,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: FontSize.s16),
                          ),
                        ],
                      ),
                    ],
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
