import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hayat/shared/component/component.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';

class BookDoctorScreen extends StatefulWidget {
  const BookDoctorScreen({Key? key}) : super(key: key);

  @override
  State<BookDoctorScreen> createState() => _BookDoctorScreenState();
}

class _BookDoctorScreenState extends State<BookDoctorScreen> {
  BookDoctorScreen() {
    _selectvalue = _kind[0];
  }

  final _kind = ['Male', 'Female'];
  String? _selectvalue = 'Male';
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(30.7911111, 30.9980556),
    zoom: 18.4746,
  );
double rating=0;
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
          'Dr/ Reda Safena',
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Gap(10.h),
                Container(
                  //height: 170,
                  width: double.infinity,

                  margin:
                      EdgeInsets.symmetric(vertical: 17.h, horizontal: 15.h),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 145.h,
                      autoPlay: true,
                      viewportFraction: .9.h,

                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9.h,
                      autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                      pauseAutoPlayOnTouch: true,
                      //enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 900),
                      //  viewportFraction: .8,
                    ),
                    items: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/d.jpg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/xx.png',
                        )),
                    // color: Styles.buttomColor,
                    shape: BoxShape.circle,
                  ),
                  height: 90.h,
                  width: 90.w,
                ),
                Column(
                  children: [
                    Text(
                      'د/ رضا سفينه',
                      style: Styles.headLine1,
                    ),
                    Text(
                      'Dr:Reds Safina Dental Clinic',
                      style: Styles.headLineGray1,
                    ),
                    Gap(10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                          size: 18.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_phone_filled,
                        color: Styles.IconColor,
                      ),
                      Gap(5.h),
                      Text(
                        '00000000000',
                        style: Styles.headLineGray1,
                      )
                    ],
                  ),
                ),
                Gap(15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_phone_filled,
                        color: Styles.IconColor,
                      ),
                      Gap(5.h),
                      Text(
                        '0000000000',
                        style: Styles.headLineGray1,
                      )
                    ],
                  ),
                ),
                Gap(30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/fff.png',
                                  )),
                              // color: Styles.buttomColor,
                            ),
                            height: 35.h,
                            width: 35.w,
                          ),
                          Gap(2.h),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/yyy.png',
                                  )),
                              // color: Styles.buttomColor,
                            ),
                            height: 35.h,
                            width: 35.w,
                          ),
                          Gap(2.h),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/ii.png',
                                  )),
                              // color: Styles.buttomColor,
                            ),
                            height: 35.h,
                            width: 35.w,
                          ),
                          Gap(2.h),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/ww.png',
                                  )),
                              // color: Styles.buttomColor,
                            ),
                            height: 35.h,
                            width: 35.w,
                          ),
                          Gap(2.h),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/gg.png',
                                  )),
                              // color: Styles.buttomColor,
                            ),
                            height: 24.5.h,
                            width: 28.w,
                          ),
                        ],
                      ),
                      Text(
                        '0EGP',
                        style: Styles.headLine1.copyWith(fontSize: 15.sp),
                      )
                    ],
                  ),
                ),
                Gap(30.h),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Container(
                      height: 115.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: FadeInRight(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: GoogleMap(
                            initialCameraPosition: _initialCameraPosition,
                            mapType: MapType.normal,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                      ),
                    )),
                Gap(30.h),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Patient Details',
                          style: Styles.headLine1.copyWith(fontSize: 16.sp),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Column(
                    children: [
                      Gap(25.h),
                      defaultFieldForm(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          Type: TextInputType.text,
                          prefix: FluentSystemIcons.ic_fluent_person_regular,
                          lable: 'User Name',
                          hint: 'User Name'),
                      Gap(18.h),
                      defaultFieldForm(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          Type: TextInputType.number,
                          prefix: FluentSystemIcons.ic_fluent_phone_filled,
                          lable: 'Phone number',
                          hint: 'Phone number'),
                      Gap(18.h),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          contentPadding:
                              EdgeInsets.fromLTRB(20.h, 2.h, 20.h, 2.h),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: .5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: 'age',
                          hintText: 'age',
                          hintStyle: Styles.lable_Hint,
                          labelStyle: Styles.lable_Hint,
                        ),
                      ),
                      Gap(18.h),
                      DropdownButtonFormField(
                        value: _selectvalue,
                        items: _kind
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            _selectvalue = val as String;
                          });
                        },
                        icon: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Styles.IconColor,
                          ),
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: .5),
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding:
                              EdgeInsets.fromLTRB(20.h, 7.h, 20.h, 10.h),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: .5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: 'Search',
                          hintText: 'Search',
                          hintStyle: Styles.lable_Hint,
                          labelStyle: Styles.lable_Hint,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter the code',
                          style: Styles.headLine1.copyWith(fontSize: 16.sp),
                        ),
                      ],
                    )),
                Gap(25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.h),
                  child: Container(
                    height: 79,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Styles.buttomColor),
                        borderRadius: BorderRadius.circular(7)),
                    child: Form(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        verifyTextField(context),
                        verifyTextField(context),
                        verifyTextField(context),
                        verifyTextField(context),
                      ],
                    )),
                  ),
                ),
                Gap(18.h),
                buildBottum(
                    height: 43,
                    width: 130,
                    text: Text(
                      'Book',
                      style: TextStyle(
                          color: Styles.ScafoldColor2,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                    decoration: BoxDecoration(
                      color: Styles.buttomColor,
                      borderRadius: BorderRadius.circular(14),
                    )),
                Gap(80.h),
              ],
            ),
          ),
          InkWell(
            onTap: (){
                showDialog(
                  context: context,
                  builder:(context)=>AlertDialog(
                    title: Text('Take a Rate'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Please leave a star rating',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        ),
                        const SizedBox(height: 32,),
                        RatingBar.builder(
                          minRating: 1,
                          itemSize: 30,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.yellow.shade300,
                            size: 18.sp,
                          ),
                          updateOnDrag: true,
                          onRatingUpdate: (rating)=>setState(() {
                            this.rating=rating;
                          }),
                        )
                      ],

                    ),
                    actions: [
                      TextButton(onPressed: ()=>Get.back(), child: Text(
                        'Ok',style: TextStyle(
                        fontSize: 20,
                      ),
                      ))
                    ],

                  ),
                );

            },
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(color: Styles.defualtColor),
              child: Center(
                child: Text(
                  'Leave a Rating',
                  style: Styles.headLineGray1
                      .copyWith(color: Colors.white, fontSize: 17.sp),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
