import 'package:bni_ui/models/dictionary_model.dart';
import 'package:bni_ui/theme.dart';
import 'package:flutter/material.dart';

class DictionaryList extends StatelessWidget {
  final DictionaryModel dictionaryModel;

  DictionaryList(this.dictionaryModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                child: Icon(
                  Icons.circle,
                  color: blackColor,
                  size: 10,
                ),
              ),
              Text(
                dictionaryModel.title,
                style: primaryTextStyle.copyWith(fontWeight: medium),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
              ),
              Expanded(
                child: Text(
                  dictionaryModel.subtitle,
                  style: primaryTextStyle.copyWith(fontSize: 10),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
