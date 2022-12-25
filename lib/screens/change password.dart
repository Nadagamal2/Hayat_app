import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/shared/component/component.dart';

class changePasswordScreen extends StatelessWidget {
  const changePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65.h,
        elevation: 0,
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
          'Change Password',
          style: TextStyle(
            fontSize: 17.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.h),
          child: Column(
            children: [
              Gap(20.h),
              Center(
                  child: Image.asset(
                'assets/w.png',
                fit: BoxFit.cover,
                height: 190.h,
                width: 190.h,
              )),
              Gap(30.h),
              Text(
                'Change Your Password',
                style: Styles.headLine1.copyWith(fontSize: 17.sp),
              ),
              Gap(15.h),
              defaultFieldForm(
                  padding:  EdgeInsets.symmetric(vertical: 3),
                  Type: TextInputType.text,
                  prefix: FluentSystemIcons.ic_fluent_lock_regular,
                  lable: 'Old Password',
                  hint: 'Old Password'),
              Gap(18.h),
              defaultFieldForm(
                  padding:  EdgeInsets.symmetric(vertical: 3),
                  Type: TextInputType.text,
                  prefix: FluentSystemIcons.ic_fluent_lock_regular,
                  lable: 'New Password',
                  hint: 'New Password'),
              Gap(18.h),
              defaultFieldForm(
                  padding:  EdgeInsets.symmetric(vertical: 3),
                  Type: TextInputType.text,
                  prefix: FluentSystemIcons.ic_fluent_lock_regular,
                  lable: 'Confirm Password',
                  hint: 'Confirm Password'),
              Gap(33.h),
              buildBottum(
                height: 42.h,
                width: 290.h,
                decoration: BoxDecoration(
                  color: Styles.buttomColor,
                  borderRadius: BorderRadius.circular(7.5.r),
                ),
                text: Text(
                  'Next',
                  style: Styles.buttomStyle,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
              Gap(10.h),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'BACK',
                    style: Styles.headLineGray2.copyWith(fontSize: 17.sp),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
