import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';
import '../../model/item_details_model.dart';
import '../app_text.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    // return FittedBox(
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Container(
    //         width: 12,
    //         height: 12,
    //         decoration: ShapeDecoration(
    //           color: itemDetailsModel.color,
    //           shape: const OvalBorder(),
    //         ),
    //       ),
    //       SizedBox(
    //         width: 40,
    //       ),
    //       AppText(
    //         title: itemDetailsModel.title,
    //         fontSize: 16,
    //         fontWeight: FontWeight.w400,
    //         color: AppColors.deepBlue,
    //       ),
    //       SizedBox(
    //         width: 86,
    //       ),
    //       AppText(
    //         title: itemDetailsModel.value,
    //         fontSize: 16,
    //         fontWeight: FontWeight.w500,
    //         color: AppColors.primary,
    //       ),
    //     ],
    //   ),
    // );
    //
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: AppText(
       title: itemDetailsModel.title,
       fontSize: 8,
       fontWeight: FontWeight.w400,
        color: AppColors.deepBlue,
      ),
      trailing: AppText(
        title: itemDetailsModel.value,
        fontSize: 8,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      ),
    );
  }
}
