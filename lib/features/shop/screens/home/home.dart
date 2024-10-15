import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/common_widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Search Bar
                  TSearchContainer(text: 'Tìm kiếm trong cửa hàng'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Mục thể loại
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Header
                        TSectionHeading(
                            title: 'Thể Loại Phổ Biến',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Thể Loại
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Heading
                  const TSectionHeading(title: 'Sản phẩm phổ biến', onPressed: null),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Sản phẩm phổ biến
                  TGridLayout(itemCount: 6, itemBuilder: (_,index) => const TProductCardVertical()
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
