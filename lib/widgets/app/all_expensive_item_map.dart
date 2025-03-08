import 'package:flutter/material.dart';
import 'package:nectar/model/all_expenses_model.dart';
import 'package:nectar/widgets/app/all_expenses_item.dart';

class AllExpensiveItemMap extends StatefulWidget {
  AllExpensiveItemMap({super.key});

  @override
  State<AllExpensiveItemMap> createState() => _AllExpensiveItemMapState();
}

class _AllExpensiveItemMapState extends State<AllExpensiveItemMap> {
  final items = [
    AllExpensesModel(
        image: "assets/images/balance.svg",
        title: "Balance",
        date: "April 2022",
        subtitle: r"$20,129"),
    AllExpensesModel(
        image: "assets/images/incom.svg",
        title: "Income",
        date: "April 2022",
        subtitle: r"$20,129"),
    AllExpensesModel(
        image: "assets/images/expenses.svg",
        title: "Expenses",
        date: "April 2022",
        subtitle: r"$20,129"),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
