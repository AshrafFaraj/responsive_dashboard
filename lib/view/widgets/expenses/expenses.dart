import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/view/widgets/section_header.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          SectionHeader(
            title: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            spacing: 12,
            children: [
              Expanded(
                child: SelectedExpensesCard(
                  assetName: Assets.imagesMoneys,
                  title: 'Balance',
                  date: 'April 2022',
                  money: 20.129,
                ),
              ),
              Expanded(
                child: UnselectedExpensesCard(
                  assetName: Assets.imagesReceive,
                  title: 'income',
                  date: 'April 2022',
                  money: 20.129,
                ),
              ),
              Expanded(
                child: UnselectedExpensesCard(
                  assetName: Assets.imagesCardSend,
                  title: 'Expenses',
                  date: 'April 2022',
                  money: 20.129,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class UnselectedExpensesCard extends StatelessWidget {
  const UnselectedExpensesCard({
    super.key,
    required this.assetName,
    required this.title,
    required this.date,
    required this.money,
  });
  final String assetName;
  final String title;
  final String date;
  final double money;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffF1F1F1)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFFFAFAFA),
                  child: SvgPicture.asset(assetName)),
              Spacer(),
              SvgPicture.asset(Assets.imagesArrow)
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            title,
            style: AppStyles.styleSemiBold16(context),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            date,
            style: AppStyles.styleRegular14(context),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "\$$money",
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}

class SelectedExpensesCard extends StatelessWidget {
  const SelectedExpensesCard({
    super.key,
    required this.assetName,
    required this.title,
    required this.date,
    required this.money,
  });
  final String assetName;
  final String title;
  final String date;
  final double money;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xff4EB7F2), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF60BEF3),
                  child: SvgPicture.asset(assetName)),
              Spacer(),
              SvgPicture.asset(Assets.imagesArrow)
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            title,
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "\$$money",
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
