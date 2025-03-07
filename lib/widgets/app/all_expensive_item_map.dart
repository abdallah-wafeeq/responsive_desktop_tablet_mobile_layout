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
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: InkWell(
              onTap: () {
               updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: InkWell(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                            itemModel: item,
                          ),
              ),
          );
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
