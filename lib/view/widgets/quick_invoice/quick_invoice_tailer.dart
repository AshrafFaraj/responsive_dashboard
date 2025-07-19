import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceTailer extends StatelessWidget {
  const QuickInvoiceTailer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Add more details',
              style: AppStyles.styleSemiBold18(context)
                  .copyWith(color: Color(0xff4EB7F2)),
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: GestureDetector(
            child: Container(
              alignment: Alignment.center,
              height: 62,
              decoration: BoxDecoration(
                  color: Color(0xff4EB7F2),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                'Send Money',
                style: AppStyles.styleSemiBold18(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
