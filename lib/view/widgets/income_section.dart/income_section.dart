import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/view/widgets/section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        SectionHeader(title: 'Income'),
      ],
    ));
  }
}
