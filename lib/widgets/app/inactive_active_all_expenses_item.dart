
import 'package:flutter/cupertino.dart';
import '../../core/utils/colors.dart';
import '../../model/all_expenses_model.dart';
import '../app_text.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(width: 1, color: AppColors.grey)),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isSelected: false,
            imageBackground: AppColors.darkGrey,
            imageColor: AppColors.primary,
            image: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          AppText(
            title: itemModel.title,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat",
            color: AppColors.deepBlue,
          ),
          SizedBox(
            height: 8,
          ),
          AppText(
            title: itemModel.date,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            color: AppColors.grey2,
          ),
          SizedBox(
            height: 12,
          ),
          AppText(
            title: itemModel.subtitle,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat",
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}




class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
        ),
        color: AppColors.primary
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isSelected: true,
            imageBackground: AppColors.white.withOpacity(0.10000000149011612),
            imageColor: AppColors.white,
            image: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          AppText(
            title: itemModel.title,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat",
            color: AppColors.white,
          ),
          SizedBox(
            height: 8,
          ),
          AppText(
            title: itemModel.date,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            color: AppColors.grey,
          ),
          SizedBox(
            height: 12,
          ),
          AppText(
            title: itemModel.subtitle,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat",
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}


