import 'package:bni_ui/models/dictionary_model.dart';
import 'package:bni_ui/pages/transfer_other_page.dart';
import 'package:bni_ui/theme.dart';
import 'package:bni_ui/widgets/dictionary_list.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 27, bottom: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: blackColor,
              ),
            ),
            Text(
              'Transfer',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Image.asset(
              'assets/icon_paper_black.png',
              width: 18,
            ),
          ],
        ),
      );
    }

    Widget contentTransfer() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_trf_own.png',
                        width: 35,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Ke Rekening Sendiri',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_trf_bni.png',
                        width: 35,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Ke Sesama BNI',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: 85,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransferOtherPager(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_trf_other.png',
                          width: 35,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Ke Bank Lain',
                          style: primaryTextStyle.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_virtual_acc.png',
                        width: 35,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Virtual Account',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_cliring.png',
                        width: 35,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Kliring',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_chair.png',
                        width: 35,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Dana Pensiun',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_remittance.png',
                        width: 35,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'International Remittance',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              height: 1,
              color: greyColor,
            ),
          ],
        ),
      );
    }

    Widget bankDictionary() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kamus Perbankan',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Istilah-istilah perbankan yang mungkin belum Anda ketahui',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children:
                        mockDictionary.map((e) => DictionaryList(e)).toList(),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            contentTransfer(),
            bankDictionary(),
          ],
        ),
      ),
    );
  }
}
