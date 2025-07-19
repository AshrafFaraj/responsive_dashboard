import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});
  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransctionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          spacing: 12,
          children: items
              .map((e) => TransactionHistoryItem(transctionModel: e))
              .toList(),
        )
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transctionModel,
  });
  final TransctionModel transctionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: ListTile(
          title: Text(transctionModel.title,
              style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(
            transctionModel.date,
            style: AppStyles.styleRegular16(context),
          ),
          trailing: Text(
            transctionModel.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transctionModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            ),
          )),
    );
  }
}
