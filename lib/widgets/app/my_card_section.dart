import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app/dots_indicator.dart';
import 'package:nectar/widgets/app_text.dart';
import 'my_card_page_view.dart';
import 'transaction_history.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {

  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(title: "My card",
        fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.deepBlue,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
