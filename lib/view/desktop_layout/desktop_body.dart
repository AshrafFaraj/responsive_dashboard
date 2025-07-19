import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/expenses/expenses.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_section.dart';
import 'package:responsive_dashboard/view/widgets/my_card_and_transaction_history/my_cards_and_transction_history_section.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 42, bottom: 22),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expenses(),
                      SizedBox(
                        height: 24,
                      ),
                      QuickInvoice()
                    ],
                  ),
                ),
                SizedBox(
                  width: 28,
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        MyCardsAndTransctionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        IncomeSection()
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
