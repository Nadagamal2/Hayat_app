import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/shared/component/component.dart';

class CityDetailScreen extends StatelessWidget {
    CityDetailScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.ScafoldColor2,
      appBar: AppBar(
        toolbarHeight: 65.h,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Styles.defualtColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 30.sp,
            )),
        centerTitle: true,
        title: Text(
          'City',
          style: TextStyle(
            fontSize: 17.sp,
          ),
        ),
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Gap(15.h),
              buildCityDetail(text: 'طنطا', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12.r)),),

              buildCityDetail(text: 'المحله الكبري', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'بسيون', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'كفر الزيات', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'زفتي', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'سمنود', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'القاهره', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'المنصوره', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'اشمون', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'القاهره', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'المنصوره', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),
              buildCityDetail(text: 'اشمون', borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0.r)),),


            ],
          ),
        )
    );
  }
}
