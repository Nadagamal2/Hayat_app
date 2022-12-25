import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/book_analysis_screen.dart';
class AnalysisLapElement extends StatelessWidget {
    AnalysisLapElement({Key? key}) : super(key: key);
  List<String> centers = [
    'smart life centers',
    'Dr/ whaleed Beauty center',
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
              size: 30,
            )),
        centerTitle: true,
        title: Text(
          'Analysis Laboratory',
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),

      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Gap(11),
            SizedBox(
              height: 600.h,
              child: ListView.separated(
                itemCount: centers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black54, width: .8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                      height: 70,
                                      width: 70,
                                    ),
                                    Spacer(
                                      flex: 2,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          centers[index],
                                          style: Styles.headLine1.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Gap(3),
                                        Container(
                                          height: 35,
                                          width: 180,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border:
                                            Border.all(color: Colors.black38),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'All eye operators',
                                                style: Styles.headLineGray1,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                  ],
                                ),
                                Spacer(
                                  flex: 20,
                                ),
                                InkWell(
                                  onTap: (){
                                    Get.to(()=>BookAnalysisLapCenters());

                                  },
                                  child: Container(
                                    height: 28,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Styles.buttomColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Book',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.5,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
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
