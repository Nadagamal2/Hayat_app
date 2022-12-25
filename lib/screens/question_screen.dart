import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/shared/component/component.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      ),
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


        Gap(10),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15),
         child: Column(
           children: [
             BuildQuestionScreen(text1:   'How to Register', text2: 'you should register by mobile number',),

             Gap(8),
             BuildQuestionScreen(text1:   'How to Register', text2: 'you should register by mobile number',),

             Gap(8),
             BuildQuestionScreen(text1:   'How to Register', text2: 'you should register by mobile number',),



           ],
         ),
       )
      ],),
    );
  }
}
//668194