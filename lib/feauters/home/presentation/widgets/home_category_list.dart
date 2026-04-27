import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_category_icon.dart';
import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_shop_item.dart';
import 'package:flutter/material.dart';

class HomeCategoryList extends StatelessWidget {
  final List categories;
  final bool isIcon;
  HomeCategoryList({super.key, required this.categories, required this.isIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: isIcon ? 100 : 130,
      child: Expanded(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return isIcon
                  ? HomeCategoryicon(
                      title: category['title'] as String,
                      icon: category['icon'] as IconData,
                      color: category['color'] as Color,
                    )
                  : HomeShopItem(
                      shopImage: category['image'],
                      shopName: category['name'],
                      shopLink: category['link'],
                    );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ),
    );
  }
}
