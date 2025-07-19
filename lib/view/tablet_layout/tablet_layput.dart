import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/view/widgets/expenses/expenses.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_section.dart';
import 'package:responsive_dashboard/view/widgets/my_card_and_transaction_history/my_cards_and_transction_history_section.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: TabletAndMobileLayoutBody()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

class TabletAndMobileLayoutBody extends StatelessWidget {
  const TabletAndMobileLayoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Expenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
