import 'package:flutter/cupertino.dart';
import 'package:nectar/model/user_info_model.dart';
import 'package:nectar/widgets/app/useer_info_listtile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

    static const items = [
    UserInfoModel(
      image: "assets/images/avatar_2.svg",
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: "assets/images/avatar_3.svg",
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: "assets/images/avatar_3.svg",
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
      UserInfoModel(
        image: "assets/images/avatar_2.svg",
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
      ),
      UserInfoModel(
        image: "assets/images/avatar_3.svg",
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
      ),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UseerInfoListtile(
              userInfoModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
