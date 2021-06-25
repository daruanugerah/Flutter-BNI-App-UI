import 'package:bni_ui/pages/transfer_page.dart';
import 'package:bni_ui/theme.dart';
import 'package:flutter/material.dart';

class RekeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 200,
            height: 110,
            child: Column(
              children: [
                Text(
                  'Saldo di Rekening BNI Anda',
                  style: whiteTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Rp 24.171.250',
                  style: whiteTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  width: 165,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lihat Laporan Mutasi',
                        style: whiteTextStyle.copyWith(fontSize: 12),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ListView(
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  //note: profile name
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Selamat Datang di BNI Mobile Banking,',
                          style: primaryTextStyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Tn. Daru Anugerah Setiawan',
                          style: primaryTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
                                    'assets/icon_wallet.png',
                                    width: 27,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Rekeningku',
                                    style:
                                        primaryTextStyle.copyWith(fontSize: 12),
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
                                      builder: (context) => TransferPage(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icon_send.png',
                                      width: 27,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Transfer',
                                      style: primaryTextStyle.copyWith(
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 85,
                              width: 85,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icon_doc.png',
                                    width: 27,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Pembayaran',
                                    style:
                                        primaryTextStyle.copyWith(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
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
                                    'assets/icon_buy.png',
                                    width: 27,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Pembelian',
                                    style:
                                        primaryTextStyle.copyWith(fontSize: 12),
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
                                    'assets/icon_invest.png',
                                    width: 27,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Investasi',
                                    style:
                                        primaryTextStyle.copyWith(fontSize: 12),
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
                                    'assets/icon_more.png',
                                    width: 27,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Lainnya',
                                    style:
                                        primaryTextStyle.copyWith(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      height: 1,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  //note: promo dan event
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Promo dan Event BNI',
                                style: primaryTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                              Text(
                                'Lihat Semua',
                                style: orangeTextStyle.copyWith(
                                    fontSize: 12,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/image_promo1.png',
                                    width: 220,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Kartu Debit Hari Anak',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Dapatkan potongan harga atau hadiah\nlangsung dengan Kartu Debit BNI\nTaplus Anak.',
                                    style: subtitleTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/image_promo2.png',
                                    width: 220,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Transfer ke BNI Dari Bank Manapun,\nBisa Dapat Hadiah Hingga Rp 625 Jt',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Semua punya kesempatan besar untuk\nmemenangkan hadiah tabungan total\nhingga Rp 625 juta dari BNI.',
                                    style: subtitleTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/image_promo3.png',
                                    width: 220,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Bayar UTBK LTMPT Bisa Di Rumah',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Penerimaan pendaftaran UTBK LTMPT\ntelah di mulai...',
                                    style: subtitleTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
