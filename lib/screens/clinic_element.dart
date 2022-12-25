import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/clinic_element_discription.dart';
import 'package:hayat/screens/search_screen.dart';


class ClinicElement extends StatelessWidget {
  ClinicElement({Key? key}) : super(key: key);

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
          'Clinics',
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
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
            Gap(15.h),
            Container(
              height: 600.h,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 4.h),
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: .7,
                  crossAxisSpacing: 5.h,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClinicElementDescription()));
                    },
                    child: FadeInRight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xff22D27F),
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
                              'Dental',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                              ),
                            ),
                            Gap(5.h),
                            Container(
                              height: 20.h,
                              width: 52.h,
                              decoration: BoxDecoration(
                                color: Colors.green.shade200,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Padding(
                                padding:
                                      EdgeInsets.symmetric(horizontal: 5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '14',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9.sp),
                                    ),
                                    Text(
                                      'Doctors',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9.sp),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
