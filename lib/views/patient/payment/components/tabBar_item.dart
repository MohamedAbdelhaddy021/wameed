import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_image.dart';

import '../../../../core/utils/app_theme.dart';
import 'pay_with_visa_item.dart';
import 'pay_with_vodafone.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                isScrollable: false,
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                indicatorWeight: 0,
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppTheme.primaryColor.withOpacity(.1)),
                tabs: [
                  Tab(
                    child: Container(
                        width: 100.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppTheme.primaryColor.withOpacity(.51)),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: AppImage(
                          "mastercard.png",
                          width: 50.w,
                          height: 41.h,
                          fit: BoxFit.cover,
                        ))),
                  ),
                  Tab(
                    child: Container(
                        width: 100.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppTheme.primaryColor.withOpacity(.51)),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: AppImage(
                          "vodafone_cash.png",
                          width: 41.w,
                          height: 41.w,
                          fit: BoxFit.cover,
                        ))),
                  ),
                ],
                padding: EdgeInsetsDirectional.only(
                    end: MediaQuery.of(context).size.width / 2.8),
              ),
              Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [VisaPayItem(), VodafonePayItem()]),
              ),
            ],
          ),
        ));
  }
}
