import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/shared/component/component.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final double height=120;
    return Scaffold(
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
          'Complaints',
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(30.h),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                    'assets/ccc.png',
                    fit: BoxFit.cover,
                    height: 210,
                    width: 210,
                  )),
                  Gap(15),
                  Text(
                    'Complaints and suggestion',
                    style: Styles.headLine1,
                  ),
                  Gap(15.h),
                  SizedBox(
                    height: height,
                    child: TextFormField(
                      maxLines: height ~/20,


                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        alignLabelWithHint: true,
                        helperMaxLines: 10,

                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding:
                        EdgeInsets.fromLTRB(10.h, 2.h, 20.h, 10.h),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .6),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        labelText: 'Your Message',
                        hintText: 'Your Message',
                        hintStyle: Styles.lable_Hint,
                        labelStyle: Styles.lable_Hint,
                      ),
                    ),
                  ),
                  Gap(60),
                  buildBottum(
                    height: 42,
                    width: 290,
                    decoration: BoxDecoration(
                      color: Styles.buttomColor,
                      borderRadius: BorderRadius.circular(7.5),
                    ),
                    text: Text(
                      'Send',
                      style: Styles.buttomStyle.copyWith(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                  Gap(8),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'BACK',
                        style: Styles.headLineGray2.copyWith(fontSize: 17),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
