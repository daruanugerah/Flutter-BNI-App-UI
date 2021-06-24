import 'package:bni_ui/widgets/menu_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icon_drawer.png',
              width: 24,
            ),
            Image.asset(
              'assets/icon_bni.png',
              width: 64,
            ),
            Image.asset(
              'assets/icon_notif.png',
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget menuList() {
      return Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            MenuList(),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                header(),
                menuList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
