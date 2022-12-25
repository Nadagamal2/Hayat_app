import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/book_doctors_screen.dart';

import 'package:hayat/screens/search_screen.dart';

class ClinicElementDescription extends StatelessWidget {
    ClinicElementDescription({Key? key}) : super(key: key);
    List<String>textDoctor=[
      'د/ رضا سفينه',
      'د/ حسين ناصف',
      'د/ فاطمه غيث' ,
      'د/ ايمن الفخراني',
      'د/ مجدي مختار'  ,
    ];


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
          'Dental',
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        actions: [
          Padding(
            padding:   EdgeInsets.only(right: 15.h),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                },

                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25.sp,
                )),
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Gap(10.h),


           SizedBox(
             height: 570.h,
             width: double.infinity,
             child: ListView.separated(
               itemCount: textDoctor.length,


               itemBuilder: (BuildContext context, int index) {
               return Padding(
                 padding:   EdgeInsets.symmetric(horizontal: 15.h),
                 child: Column(
                   children: [
                     Container(
                       height: 195.h,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.r),
                         border: Border .all(color: Colors.black54,width: .8.r),

                       ),
                       child: Padding(
                         padding:   EdgeInsets.symmetric(horizontal: 13.w,vertical: 5.h),
                         child: Column(
                           children: [
                             Row(children: [
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
                                 height: 70.h,
                                 width: 70.h,
                               ),
                               Spacer(),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(textDoctor[index],style: Styles.headLine1.copyWith(
                                       fontSize: 15.sp, fontWeight: FontWeight.w600),),
                                   Gap(3.h),
                                   Container(
                                     height: 60.h,
                                     width: 180.w,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(8.r),
                                       border: Border .all(color: Colors.black38),
                                     ),
                                     child: Padding(
                                       padding:   EdgeInsets.symmetric(horizontal: 8.w),
                                       child: Align(
                                         alignment: Alignment.centerLeft,
                                         child: Text(
                                           'Dr:Reds Safina Dental Clinic',
                                           style: Styles.headLineGray1,
                                         ),
                                       ),
                                     ),
                                   )
                                 ],
                               ),
                               Spacer(flex: 3,),
                             ],),
                             Gap(8.h),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Column(
                                   children: [
                                     Text(
                                       '0 Rate',style: Styles.headLineGray1,
                                     ),
                                     Gap(8.h),
                                     Row(
                                       children: [
                                         Icon(Icons.star,color: Colors.yellow.shade300,size: 18.sp,),
                                         Icon(Icons.star,color: Colors.yellow.shade300,size: 18.sp,),
                                         Icon(Icons.star,color: Colors.yellow.shade300,size: 18.sp,),
                                         Icon(Icons.star,color: Colors.yellow.shade300,size: 18.sp,),
                                         Icon(Icons.star,color: Colors.yellow.shade300,size: 18.sp,),
                                       ],
                                     )
                                   ],
                                 ),
                                 Text('0 EPG',style: Styles.headLineGray1.copyWith(color: Color(0xff22D27F)),)
                               ],
                             ),
                             Gap(15.h),
                             InkWell(
                               onTap: (){
                                 Get.to(()=>BookDoctorScreen());
                               },

                               child: Container(
                                 height: 25.h,
                                 width: 90.w,
                                 decoration: BoxDecoration(
                                   color: Styles.buttomColor,
                                   borderRadius: BorderRadius.circular(12.r),
                                 ),
                                 child: Align(
                                   alignment: Alignment.center,
                                   child: Text(
                                     'Book',
                                     style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 15.5.sp,
                                         fontWeight: FontWeight.w600
                                     ),
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               );
             }, separatorBuilder: (BuildContext context, int index) {
                 return Gap(20.h);
             },

             ),
           ),
          ],
        ),
      ),
    );
  }
}
