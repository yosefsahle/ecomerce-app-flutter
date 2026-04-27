import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_banner_list.dart';
import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_category_icon.dart';
import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_category_list.dart';
import 'package:ecomerce_ui_design/feauters/home/presentation/widgets/home_title.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final categories = [
    {"icon": Icons.laptop, "title": "Laptop", "color": Colors.teal[200]},
    {
      "icon": Icons.desktop_mac,
      "title": "Desktop",
      "color": Colors.indigo[200],
    },
    {
      "icon": Icons.headphones_rounded,
      "title": "Headphone",
      "color": Colors.purple[200],
    },
    {"icon": Icons.laptop, "title": "Laptop", "color": Colors.deepOrange[200]},
    {"icon": Icons.laptop, "title": "Laptop", "color": Colors.brown[200]},
    {"icon": Icons.laptop, "title": "Laptop", "color": Colors.black},
  ];

  final shops = [
    {
      "name": "KULFINET",
      "image":
          "https://play-lh.googleusercontent.com/CzZO0Dd6_DqTUFXHBk8cpUvmkxasrpcfv4s_ZFAGQsNVxYka6AoPuL_mm1ZIzTh3sCkFStLlXtuMfs0QT6Y6",
      "link": "",
    },
    {
      "name": "ASHEWA",
      "image": "https://aemeromedia.com/storage/2023/11/unnamed-3.png",
      "link": "",
    },
    {
      "name": "GARI",
      "image":
          "https://play-lh.googleusercontent.com/7YLencmVK-_N6gy0uhHJ_1JjN0oLw4KF8mDyn6YHP15izN_U62QG-IjC9F5b2r_qCTKi",
      "link": "",
    },
    {
      "name": "ZEMEN",
      "image":
          "https://play-lh.googleusercontent.com/I69isRkcCZVT5Mlq_kJd_HsP3NIZP43Vn6cfKMu8PO4pzItpsK0Q7S__xG2RnFqMXsNo9ETx0VYwbBk5qK3Ikg",
      "link": "",
    },
    {
      "name": "ETHIOSUQ",
      "image":
          "https://www.ethyp.com/img/et/d/1772187019-65-ethiosuq-ethiopian-online-shopping.png",
      "link": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withValues(alpha: 0.05),
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 0.5),
                        decoration: TextDecoration.none,
                        fontSize: 15,
                      ),
                      cursorColor: Colors.black.withValues(alpha: 0.2),
                      decoration: InputDecoration(
                        hint: Text(
                          "Search Products Here",
                          style: TextStyle(fontSize: 15),
                        ),
                        fillColor: Colors.amber,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black.withValues(alpha: 0.2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              HomeBannerList(),
              HomeComponentsTitle(
                title: "Top Categories",
                link: "",
                hasIcon: true,
              ),
              HomeCategoryList(categories: categories, isIcon: true),
              HomeComponentsTitle(title: "Top Shops", link: "", hasIcon: true),
              HomeCategoryList(categories: shops, isIcon: false),
            ],
          ),
        ),
      ),
    );
  }
}
