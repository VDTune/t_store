import 'package:flutter/material.dart';

import '../../../../../common/widgets/common_widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 81,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder:  (_, index) {
          return TVerticalImageText(image: TImages.sportIcon, title: 'Thể Thao', onTap: (){},);
        },
      ),
    );
  }
}