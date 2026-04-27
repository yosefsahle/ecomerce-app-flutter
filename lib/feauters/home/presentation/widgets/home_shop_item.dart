import 'package:flutter/material.dart';

class HomeShopItem extends StatelessWidget {
  final String shopImage;
  final String shopName;
  final String shopLink;
  const HomeShopItem({
    super.key,
    required this.shopImage,
    required this.shopLink,
    required this.shopName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(height: 100, image: NetworkImage(shopImage)),
          ),
          Text(shopName, style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
