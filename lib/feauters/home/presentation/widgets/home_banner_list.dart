import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_banner_item.dart';
import 'package:flutter/material.dart';

class HomeBannerList extends StatefulWidget {
  const HomeBannerList({super.key});

  @override
  State<HomeBannerList> createState() => _HomeBannerListState();
}

class _HomeBannerListState extends State<HomeBannerList> {
  final images = [
    "https://static.vecteezy.com/system/resources/thumbnails/008/601/839/small/online-shopping-background-design-free-vector.jpg",
    "https://img.pikbest.com/origin/10/01/82/867pIkbEsTAIq.png!w700wp",
    "https://t3.ftcdn.net/jpg/04/65/46/52/360_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: SizedBox(
        height: 150,
        child: Expanded(
          child: ListView.separated(
            itemCount: images.length,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              return HomeBannerItem(image: images[index]);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
