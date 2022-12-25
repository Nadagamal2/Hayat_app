import 'package:fluentui_icons/fluentui_icons.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/Notification_screen.dart';

import 'package:hayat/screens/account_Detail_screen.dart';
import 'package:hayat/screens/city_detail_screen.dart';
import 'package:hayat/screens/complaint_screen.dart';
import 'package:hayat/screens/contact_us_screen.dart';
import 'package:hayat/screens/setting.dart';
import 'package:hayat/screens/sign_in_screen.dart';
import 'package:hayat/screens/term_condition_screen.dart';
import 'package:hayat/shared/component/component.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 65.h,
        elevation: 0,
        backgroundColor: Styles.defualtColor,
        leading: InkWell(
          child: Container(
            padding: EdgeInsets.all(10.h),
            child: Image(
              image: AssetImage(
                'assets/whats.png',
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Styles.ScafoldColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Stack(
                children: [
                  Container(
                      height: 180.h,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Gap(10.h),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  opacity: 20,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/xx.png',
                                  )),
                              // color: Styles.buttomColor,
                              shape: BoxShape.circle,
                            ),
                            height: 75.h,
                            width: 75.w,
                          ),
                          Gap(10.h),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(10.h),
                          Text(
                            '01255625845',
                            style: TextStyle(
                                fontSize: 16.5.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                        color: Styles.buttomColor,
                      )),
                  Positioned(
                      bottom: 89.h,
                      height: 130.h,
                      width: 220.w,
                      right: -72.h,
                      child: InkWell(
                        onTap: () {
                          Get.to(() => SettingScreen());
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                        },
                        child: Icon(
                          FluentSystemIcons.ic_fluent_settings_regular,
                          color: Colors.white,
                          size: 35.sp,
                        ),
                      )),
                ],
              ),
            ),
            Gap(18.h),
            BuildAccountScreen(
              text: 'Account',
              icons: FluentSystemIcons.ic_fluent_person_regular,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12.r)),
              onTap: () {
                Get.to(()=>accountDetailScreen());
              },
            ),
            BuildAccountScreen(
              text: 'City',
              icons: FluentSystemIcons.ic_fluent_location_regular,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0)), onTap: () {
              Get.to(()=>CityDetailScreen());

            },
            ),
            BuildAccountScreen(
              text: 'Contact Us',
              icons: FluentSystemIcons.ic_fluent_person_support_regular,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0)), onTap: () {
              Get.to(()=>ContactUsScreen());
            },
            ),
            BuildAccountScreen(
              text: 'Complaints',
              icons: FluentSystemIcons.ic_fluent_notebook_question_mark_regular,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0))
              , onTap: () {
              Get.to(()=>ComplaintsScreen());
            },
            ),
            BuildAccountScreen(
              text: 'Terms and Conditions',
              icons: FluentSystemIcons.ic_fluent_handshake_regular,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0)), onTap: () {
              Get.to(()=>TermsAndConditions());
            },
            ),
            BuildAccountScreen(
              text: 'Notifications',
              icons: Icons.notifications_none_outlined,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0)), onTap: () {
              Get.to(()=>NotificationScreen());
            },
            ),
            BuildAccountScreen(
              text: 'Logout',
              color: Colors.white,
              icons: Icons.logout_rounded,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)), onTap: () {
              showDialog(
                context: context,
                builder:(context)=>AlertDialog(
                  title: Text('Logout'),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Are you sure to leave ?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 32,),

                    ],

                  ),
                  actions: [
                    TextButton(onPressed: ()=>Get.offAll(()=>SignInScreen()), child: Text(
                      'Ok',style: TextStyle(
                      fontSize: 18,
                    ),
                    )),
                    TextButton(onPressed: ()=>Get.back(), child: Text(
                      'Cancel',style: TextStyle(
                      fontSize: 18,
                    ),
                    )),
                  ],

                ),
              );

            },
            ),
            Gap(30.h),
          ],
        ),
      ),
    );
  }
}
