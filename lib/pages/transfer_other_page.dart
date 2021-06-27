import 'package:bni_ui/theme.dart';
import 'package:flutter/material.dart';

class TransferOtherPager extends StatefulWidget {
  @override
  _TransferOtherPagerState createState() => _TransferOtherPagerState();
}

class _TransferOtherPagerState extends State<TransferOtherPager> {
  String _selectedBank;
  static const _banks = [
    'Bank Rakyat Indonesia',
    'Bank Mandiri',
    'Bank Central Asia',
  ];
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 27, bottom: 20),
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
              'Transfer ke Bank Lain',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Container(
              width: 30,
              height: 30,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Riwayat Transfer',
                  style: primaryTextStyle.copyWith(fontWeight: medium),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Ingin transfer ke tujuan sebelumnya? Cari rekening tujuan di sini',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 180,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffFFF1ED),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xffFFAA8B),
                      )),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo_bri.png',
                        width: 46,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amanda Farouq',
                              style: primaryTextStyle.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '3169 01 032 115 537',
                              style: subtitleTextStyle.copyWith(fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 180,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffFFF1ED),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xffFFAA8B),
                      )),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo_bca.png',
                        width: 46,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olivia Hadiningrat',
                              style: primaryTextStyle.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '83540 01298',
                              style: subtitleTextStyle.copyWith(fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(
              height: 1,
              color: greyColor,
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      );
    }

    Widget inputBank() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bank Tujuan',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            DropdownButton(
              underline: Divider(
                color: Color(0xffF15A23),
                height: 2,
              ),
              isExpanded: true,
              value: _selectedBank,
              hint: Text(
                'Pilih Nama Bank',
                style: primaryTextStyle.copyWith(
                  color: blackColor.withOpacity(0.5),
                ),
              ),
              items: _banks.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (selectedItem) => setState(
                () => _selectedBank = selectedItem,
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget inputNorek() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nomor Rekening Tujuan',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextFormField(
              cursorColor: orangeColor,
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Ketikkan nomor rekening tanpa kode bank',
                hintStyle: primaryTextStyle.copyWith(
                  color: blackColor.withOpacity(0.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffF15A23),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffF15A23),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget inputTransfer() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nominal Transfer',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Center(
              child: Row(
                children: [
                  Text(
                    'Rp',
                    style: primaryTextStyle.copyWith(
                        color: blackColor.withOpacity(0.5), fontWeight: medium),
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: orangeColor,
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15A23),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15A23),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget inputKeterangan() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Keterangan',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Boleh tidak diisi',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            TextFormField(
              cursorColor: orangeColor,
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Cth: Bayar hutang Starbucks',
                hintStyle: primaryTextStyle.copyWith(
                  color: blackColor.withOpacity(0.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffF15A23),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffF15A23),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xffFF5757),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                child: Container(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lanjutkan',
                        style: whiteTextStyle.copyWith(fontSize: 12),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  content(),
                  inputBank(),
                  inputNorek(),
                  inputTransfer(),
                  inputKeterangan(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
