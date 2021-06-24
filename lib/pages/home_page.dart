import 'package:bni_ui/pages/kredit_page.dart';
import 'package:bni_ui/pages/qr_page.dart';
import 'package:bni_ui/pages/rekening_page.dart';
import 'package:bni_ui/widgets/menu_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

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
      return Container(
        height: 40,
        margin: EdgeInsets.only(bottom: 23),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            MenuList(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          ],
        ),
      );
    }

    Widget pageView() {
      return Expanded(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          children: [
            RekeningPage(),
            KreditPage(),
            QrPage(),
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
                pageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
