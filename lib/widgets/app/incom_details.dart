
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../model/item_details_model.dart';
import 'item_details.dart';


class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    ItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    ItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ItemDetails(itemDetailsModel: e),
      )).toList(),
    );

    //  return ListView.builder(
    //   // shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(itemDetailsModel: items[index]);
    //   },
    // );
  }
}