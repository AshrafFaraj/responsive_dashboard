import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer_item.dart';
import 'package:responsive_dashboard/view/widgets/user_info_list_tile.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<CustomDrawerItem> items = [
    CustomDrawerItem(title: 'Dashboard', assetName: Assets.imagesCategory),
    CustomDrawerItem(title: 'My Transaction', assetName: Assets.imagesConvert),
    CustomDrawerItem(title: 'Statistics', assetName: Assets.imagesGraph),
    CustomDrawerItem(title: 'Wallet Account', assetName: Assets.imagesWallet),
    CustomDrawerItem(title: 'My Investments', assetName: Assets.imagesChart),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 28, left: 20),
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 50, bottom: 9, right: 44, left: 44),
              child: Container(
                  height: 53,
                  width: 119,
                  alignment: Alignment.center,
                  color: Color(0xffC4C4C4),
                  child: SvgPicture.asset(Assets.imagesGallery)),
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    assetName: Assets.imagesAvatar0,
                    title: "Lekan Okeowo",
                    subTitle: "demo@gmail.com")),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverList.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => items[index]),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                CustomDrawerItem(
                    title: 'Setting system', assetName: Assets.imagesSetting),
                CustomDrawerItem(
                    title: 'Logout account', assetName: Assets.imagesLogout),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
