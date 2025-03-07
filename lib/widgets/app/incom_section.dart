// import 'package:flutter/cupertino.dart';
// import 'package:nectar/widgets/app/custom_background_container.dart';
// import 'incom_chart.dart';
// import 'incom_details.dart';
// import 'incom_section_header.dart';
//
// class IncomSection extends StatelessWidget {
//   const IncomSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         top: 24,
//       ),
//       child: CustomBackgroundContainer(
//         child: Column(
//           children: [
//             IncomSectionHeader(),
//             SizedBox(
//               height: 16,
//             ),
//             Row(
//               children: [
//                 Expanded(child: IncomChart()),
//                 Expanded(
//                   flex: 2,
//                   child: IncomeDetails(),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'incom_section_body.dart';
import 'incom_section_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          children: [IncomSectionHeader(), IncomSectionBody()],
        ),
    );
  }
}
