import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: Color(0xffF1F1F1))),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              SizedBox(
                width: 18,
              ),
              SvgPicture.asset(Assets.imagesArrowDown),
            ],
          ),
        )
      ],
    );
  }
}
