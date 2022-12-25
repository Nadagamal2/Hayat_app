import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:gap/gap.dart';
import 'package:get/get.dart';
 import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/Medical_center_element.dart';
import 'package:hayat/screens/analysis_laboratory.dart';
import 'package:hayat/screens/clinic_element.dart';
import 'package:hayat/screens/hospital_element.dart';
import 'package:hayat/screens/pharmacies_element.dart';
import 'package:hayat/screens/x_ray_elelment.dart';


class HomeScreen extends StatefulWidget {
    HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: [Container(
          padding: EdgeInsets.all(6.h),
          child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ( context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),

                      child: Container(
                        height: 200,
                        width: 200,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
                                height: 45.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color: Styles.defualtColor,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Center(
                                  child: Text(
                                    'English',
                                    style: TextStyle(
                                      color: Styles.ScafoldColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {

                              },
                            ),
                            Gap(10.h),
                            InkWell(
                              child: Container(
                                height: 45.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color:
                                       Color(0xffBCBCBB),

                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Center(
                                  child: Text(
                                    'Arabic',
                                    style: TextStyle(
                                      color:Styles.ScafoldColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {

                              },
                            ),
                          ],
                        ),
                      ),

                    );




                  },
                );


              },
              child: Text(
                'Arabic',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              )),
        ),


        ],
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Gap(5.h),
            Container(
              //height: 170,
              width: double.infinity,

              margin: EdgeInsets.symmetric(vertical: 17.h,horizontal: 15.h),
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
            Gap(30.h),
            Container(
              height: 260.h,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 4.h),
              child: GridView(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ClinicElement()));
                        Get.to(()=>ClinicElement(),);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/11.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Clinics',
                              style: TextStyle(
                                fontSize: 13.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(()=>MedicalCenterElement(),);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:   EdgeInsets.all(9.0.h),
                              child: Image(
                                image: AssetImage(
                                  'assets/22.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Medical Centers',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(()=>HospitalElement(),);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                    EdgeInsets.symmetric(horizontal: 10.5.h),
                              child: Image(
                                image: AssetImage(
                                  'assets/33.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Hospital',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(()=>PharmaciesElement(),);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:   EdgeInsets.symmetric(horizontal: 15.h),
                              child: Image(
                                image: AssetImage(
                                  'assets/44.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Pharmacies',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(()=>AnalysisLapElement(),);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:   EdgeInsets.symmetric(horizontal: 12.h),
                              child: Image(
                                image: AssetImage(
                                  'assets/55.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Analysis Laboratory',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(()=>XRayElement(),);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/66.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'X Rays',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 12.h,
                    childAspectRatio: .7.h,
                    crossAxisSpacing: 18.h,
                  )),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/print-171042142.jpg',
                          )),
                      // color: Styles.buttomColor,
                      shape: BoxShape.circle,
                    ),
                    height: 70,
                    width: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
