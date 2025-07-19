import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key, required this.label, required this.hintText});
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.styleMedium16(context),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.only(top: 12),
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppStyles.styleRegular16(context),
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        )
      ],
    );
  }
}
