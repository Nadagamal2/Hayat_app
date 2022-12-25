import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/Edit_account.dart';
import 'package:hayat/shared/component/component.dart';

class accountDetailScreen extends StatelessWidget {
  const accountDetailScreen({Key? key}) : super(key: key);

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
          'Profile',
          style: TextStyle(
            fontSize: 17.sp,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 130.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.defualtColor,
                  ),
                ),
               Padding(
                 padding:   EdgeInsets.symmetric(horizontal: 23.h,vertical: 15.h),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     InkWell(

                       child: Container(
                         height: 32.h,
                         width:80.h,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12.r),
                           color: Colors.white,
                         ),
                         child: Center(
                           child: Text(
                             'Edit',
                             style: Styles.headLine1.copyWith(fontSize: 16.sp),
                           ),
                         ),
                       ),
                       onTap: (){
                         navigateTo(context, EditAccountScreen());
                       },
                     ),
                     Gap(20.h),
                     Container(
                       height: 135.h,
                       width:double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(12.r),
                         color: Colors.white,
                       ),
                       child:
                       Padding(
                         padding:   EdgeInsets.only(top: 30.h),
                         child: Center(child: Text('Name',style: Styles.headLine1.copyWith(fontSize: 17.sp),)),
                       ),


                       ),






                   ],
                 ),
               ),
                Positioned(
                  bottom: 111.h,
                  left: 124.h,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(

                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/xx.png',
                          )),
                      // color: Styles.buttomColor,
                      shape: BoxShape.circle,
                    ),
                    height: 85.h,
                    width: 85.w,
                  ),
                ),


              ],
            ),
           Padding(
             padding:   EdgeInsets.symmetric(horizontal: 23.h),
             child: Column(
               children: [
                 Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Personal info',
                     style: Styles.headLine1.copyWith(fontSize: 17.sp),
                   ),
                 ),
                 Gap(5.h),
                 TextFormField(
                   decoration: InputDecoration(
                     floatingLabelBehavior: FloatingLabelBehavior.never,

                     focusedBorder: UnderlineInputBorder(
                       borderRadius: BorderRadius.circular(6.r),


                     ),

                     border: OutlineInputBorder(),
                     contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(width: .6.r),

                       borderRadius: BorderRadius.circular(6.r),
                     ),
                     prefixIcon: Icon(

                       FluentSystemIcons.ic_fluent_phone_filled,
                       size: 25.sp,
                       color: Styles.IconColor,
                     ),
                     labelText: '011246484685',

                     labelStyle: Styles.lable_Hint.copyWith(color: Colors.black,fontSize: 12.sp),
                   ),
                 ),
                 Gap(10.h),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 12.h),
                   child: Row(
                     children: [
                       Icon(Icons.mail_outline_rounded,color: Styles.IconColor,),
                       Gap(15.h),
                       Text('zzTVpk@clinic.com',style: Styles.lable_Hint.copyWith(color: Colors.black,fontSize: 12.sp),)
                     ],
                   ),
                 )
               ],
             ),
           ),
           Gap(217),
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
    );
  }
}
