import 'dart:io';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/shared/component/component.dart';
import 'package:image_picker/image_picker.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({Key? key}) : super(key: key);

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
 static File? file;
  ImagePicker image=ImagePicker();
  @override
  Widget build(BuildContext context) {
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
          'Edit Profile',
          style: TextStyle(
            fontSize: 17.sp,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:   EdgeInsets.symmetric(horizontal: 33.h,vertical: 30.h),
          child: Column(
            children: [
              Gap(30.h),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      child:file==null?
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
                      ):
                          CircleAvatar(
                            backgroundImage: FileImage(file!),
                            radius: 50.r,

                          ),
                      // Image.file(
                      //   file!,
                      //   height: 95,
                      //   fit: BoxFit.cover,
                      //
                      // ),
                    ),
                    InkWell(
                      onTap: (){
                        getGallery();

                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff898A8F),
                        child: Icon(Icons.camera_alt_rounded,color: Styles.ScafoldColor,size: 14.sp,),
                        radius: 13.r,

                      ),
                    )

                  ],
                ),
              ),
              Gap(30.h),
              defaultFieldForm(
                padding:  EdgeInsets.symmetric(vertical: 3),
                  Type: TextInputType.text,
                  prefix: FluentSystemIcons.ic_fluent_person_regular,
                  lable: 'Name',
                  hint: 'Name'),
              Gap(18),
              defaultFieldForm(
                padding:  EdgeInsets.symmetric(vertical: 3),
                  Type: TextInputType.text,
                  prefix: FluentSystemIcons.ic_fluent_mail_regular,
                  lable: 'Email',
                  hint: 'Email'),
              Gap(18),
              defaultFieldForm(
                padding:  EdgeInsets.symmetric(vertical: 3),
                  Type: TextInputType.number,
                  prefix: FluentSystemIcons.ic_fluent_phone_filled,
                  lable: 'phone',
                  hint: 'phone'),

              Gap(120.h),
              buildBottum(
                height: 40.h,
                width: 290.h,
                decoration: BoxDecoration(
                  color: Styles.buttomColor,
                  borderRadius: BorderRadius.circular(7.5.r),
                ),
                text: Text(
                  'save',
                  style: Styles.buttomStyle,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
              Gap(10.h),
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
      ),
    );
  }
  getGallery()async{
    var img =await image .pickImage(source: ImageSource.gallery);
    setState(() {
      file=File(img!.path);
    });

  }
}
