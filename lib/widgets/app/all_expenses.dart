import 'package:flutter/cupertino.dart';
import 'Row_all_expendsess.dart';
import 'all_expensive_item_map.dart';
import 'custom_background_container.dart';


class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key,});


  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          RowAllExpendsess(),
          SizedBox(
            height: 16,
          ),
          AllExpensiveItemMap(),
        ],
      ),
    );
  }
}



