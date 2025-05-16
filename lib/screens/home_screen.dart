// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/screens/components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back-svgrepo-com.svg",
          height: 24,
          width: 24,
        ),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              height: 24,
              width: 24,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/add-to-shopping-cart-e-commerce-symbol-svgrepo-com (1).svg",
              height: 24,
              width: 24,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
