import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice_tailer.dart';
import 'package:responsive_dashboard/view/widgets/user_info_list_tile.dart';

class QuickInvoice extends StatelessWidget {
  QuickInvoice({
    super.key,
  });
  final List<UserInfoModel> userInfo = [
    UserInfoModel(
        assetName: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        assetName: Assets.imagesAvatar2,
        title: 'Josau Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        assetName: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Text('Latest Transaction'),
          SizedBox(
            height: 72,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: userInfo.length,
                itemBuilder: (context, index) => IntrinsicWidth(
                    child: UserInfoListTile(userInfoModel: userInfo[index]))),
          ),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceTailer(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
