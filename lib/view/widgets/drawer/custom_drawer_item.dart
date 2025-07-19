import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.title, required this.assetName});
  final String title;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          SvgPicture.asset(assetName),
          SizedBox(
            width: 16,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: AppStyles.styleRegular16(context),
              )),
        ],
      ),
    );
  }
}
