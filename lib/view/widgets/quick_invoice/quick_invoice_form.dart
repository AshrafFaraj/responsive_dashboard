import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/custom_form_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: CustomFormField(
                  label: 'Customer name', hintText: 'Type customer name'),
            ),
            Expanded(
              child: CustomFormField(
                  label: 'Customer email', hintText: 'Type customer email'),
            ),
          ],
        ),
        // SizedBox(
        //   height: 24,
        // ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: CustomFormField(
                  label: 'Item name', hintText: 'Type item name'),
            ),
            Expanded(
              child: CustomFormField(
                  label: 'Item mount', hintText: 'Type item name'),
            ),
          ],
        )
      ],
    ));
  }
}
