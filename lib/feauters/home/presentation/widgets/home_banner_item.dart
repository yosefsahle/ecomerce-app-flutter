import 'package:flutter/material.dart';

class HomeBannerItem extends StatelessWidget {
  final String image;
  const HomeBannerItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
      ),
    );
  }
}
