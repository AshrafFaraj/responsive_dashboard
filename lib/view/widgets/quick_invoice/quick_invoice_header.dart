import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xFFFAFAFA),
            child: SvgPicture.asset(Assets.imagesAdd))
      ],
    );
  }
}
