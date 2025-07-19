import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/view/widgets/my_card_and_transaction_history/my_card.dart';
import 'package:responsive_dashboard/view/widgets/my_card_and_transaction_history/transaction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCard(),
        SizedBox(
          height: 20,
        ),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}
