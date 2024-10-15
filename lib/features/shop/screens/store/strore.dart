
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_band_title_text_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cửa Hàng', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? TColors.black : TColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Bar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(text: 'Tìm kiếm trong Cửa Hàng', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    
                    /// Danh sách thương hiệu nổi bật
                    TSectionHeading(title: 'Thương hiệu nổi bật', showActionButton: true, onPressed: (){}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: (){},
                        child: TRoundedContainer(
                          padding: const EdgeInsets.all(TSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              /// Icon
                              Flexible(
                                child: TCircularImage(
                                  isNetworkImage: false,
                                  image: TImages.clothIcon,
                                  backgroundColor: Colors.transparent,
                                  overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                                ),
                              ),
                              const SizedBox(width: TSizes.spaceBtwItems / 2),

                              /// Text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.large),
                                    Text(
                                      '256 Sản phẩm',
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}

