import 'package:flutter/material.dart';

class HomeComponentsTitle extends StatelessWidget {
  final String title;
  final String link;
  final bool hasIcon;
  const HomeComponentsTitle({
    super.key,
    required this.link,
    required this.title,
    required this.hasIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: () {
          print("categories Clieked");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (hasIcon) Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ],
        ),
      ),
    );
  }
}
