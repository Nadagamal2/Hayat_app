import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:animate_do/animate_do.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class CenterScreen extends StatefulWidget {
  CenterScreen({Key? key}) : super(key: key);

  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  YoutubePlayerController? _controller;
  // final videoUrl="https://www.youtube.com/watch?v=F7ljCKO9C-s&t=4s";

@override
  void initState() {
     super.initState();
     _controller = YoutubePlayerController(
       initialVideoId: 'jZZpphYySc4',
       flags: YoutubePlayerFlags(
         autoPlay: false,
         mute: true,
         isLive:false,
       ),
     );

}
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
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage(
                'assets/whats.png',
              ),
            ),
          ),
        ),
        title: Text(
          'Dewan Chanel',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
          ),
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInRight(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.w),
                child: Container(
                  height: 335.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 22.h, right: 22.h, left: 22.h),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Transform.rotate(
                                angle: .9.sign,
                                child: Container(
                                  height: 48.h,
                                  width: 48.h,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 2.h,
                                          spreadRadius: .8.sign,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(13.r),
                                      //     border: Border.all(color: Colors.red),
                                      // color: Colors.white,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/print-171042142.jpg',
                                          ))),
                                ),
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Diwan Medical Channel',
                                  style: Styles.headLine1.copyWith(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '19/07/2022 23:05',
                                  style: Styles.headLine1.copyWith(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  'حساسيه العين في فتره الربيع',
                                  style: Styles.headLine1.copyWith(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 3,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Container(
                          // height: 160.h,
                          // width: double.infinity,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(15.r),
                          //   color: Colors.black,
                          // ),
                          child:YoutubePlayerBuilder(
                            player:  YoutubePlayer(
                              controller: _controller!,
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.red,
                              progressColors: ProgressBarColors(
                                playedColor: Colors.red,
                                handleColor: Colors.red,
                              ),


                            ),
                            builder: (context,player){
                              return Container(
                                height: 160.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: player,
                              );
                            },
                          )
                        ),
                      ),
                      Gap(5.h),
                      Text(
                        'د/ محمد حامد الاكشر - استشاري طب وجراحه\n العيون - الحديث عن حساسيه العين في فترة الربيع',
                        style: Styles.headLineGray2,
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
