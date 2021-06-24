import 'package:bni_ui/theme.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  MenuList({
    this.selectedIndex = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap(0);
            }
          },
          child: Container(
            width: 120,
            height: 40,
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: selectedIndex == 0 ? Colors.white : Colors.white30,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                'Rekening BNI',
                style: selectedIndex == 0
                    ? orangeTextStyle.copyWith(
                        fontSize: 12,
                      )
                    : whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap(1);
            }
          },
          child: Container(
            width: 120,
            height: 40,
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: selectedIndex == 1 ? Colors.white : Colors.white30,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                'Kartu Kredit',
                style: selectedIndex == 1
                    ? orangeTextStyle.copyWith(
                        fontSize: 12,
                      )
                    : whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap(2);
            }
          },
          child: Container(
            width: 120,
            height: 40,
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: selectedIndex == 2 ? Colors.white : Colors.white30,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                'Kode QR',
                style: selectedIndex == 2
                    ? orangeTextStyle.copyWith(
                        fontSize: 12,
                      )
                    : whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
