import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchScreen() {
    _selectvalueCity = _itemsCity[0];
    _selectvalueDepartment=_itemsDepartment[0];
    _selectvalueMaster=_itemsMaster[0];
    _selectvalueSort=_itemsSort[0];
  }



  final _itemsCity = ['طنطا',  'المحله الكبري',  'بسيون', 'كفر الزيات'];
  final _itemsDepartment = ['Dental',  'oncology',  'Blood vessels', 'internal diseases'];
  final _itemsMaster = ['Advisor',  'PHD',  'Professor', 'Master'];
  final _itemsSort = ['Low to High', 'High to Low'];
  String? _selectvalueCity = 'طنطا';
  String? _selectvalueSort = 'Low to High';
  String? _selectvalueDepartment = 'Dental';
  String? _selectvalueMaster= 'Advisor';

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
          'Search',
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(13.h),
              child: Container(
                height: 411.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            cursorHeight: 25.h,
                            decoration: InputDecoration(
                              fillColor: Color(0xffF5F5F5),
                              filled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              border: OutlineInputBorder(),
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.h, 2.h, 20.h, 2.h),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              labelText: 'Search',
                              hintText: 'Search',
                              hintStyle: Styles.lable_Hint,
                              labelStyle: Styles.lable_Hint,
                            ),
                          ),
                          Container(
                            height: 31.h,
                            width: 58.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: Styles.buttomColor,
                            ),
                            child: Center(
                              child: Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Gap(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(
                            flex: 3,
                          ),
                          Container(
                            height: 22.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text(
                                  '1',
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey.shade300,
                                  size: 19.sp,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 22.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text(
                                  '2',
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey.shade300,
                                  size: 19.sp,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 22.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text(
                                  '3',
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey.shade300,
                                  size: 19.sp,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 22.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text(
                                  '4',
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey.shade300,
                                  size: 19.sp,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 22.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text(
                                  '5',
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey.shade300,
                                  size: 19.sp,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FluentSystemIcons.ic_fluent_location_regular,
                                  size: 24.sp,
                                  color: Styles.IconColor,
                                ),
                                Gap(15.h),
                                Text(
                                  'City',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                            Gap(5.h),


                            DropdownButtonFormField(
                              value: _selectvalueCity,
                              items: _itemsCity
                                  .map((e) => DropdownMenuItem(
                                        child: Text(e),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  _selectvalueCity = val as String;
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
                                fillColor: Color(0xffF5F5F5),
                                filled: true,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                //EdgeInsets.fromLTRB(24.h, 10.h, 20.h, 0.h),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                labelText: 'Search',
                                hintText: 'Search',
                                hintStyle: Styles.lable_Hint,
                                labelStyle: Styles.lable_Hint,
                              ),
                            ),
                            // Container(
                            //   height: 40,
                            //   width: double.infinity,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(12),
                            //     color: Color(0xffF5F5F5),
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Spacer(),
                            //       Text(
                            //         'طنطا',
                            //         style: TextStyle(
                            //             color: Colors.black,
                            //             fontSize: 15,
                            //             fontWeight: FontWeight.w600),
                            //       ),
                            //       Spacer(
                            //         flex: 10,
                            //       ),
                            //       InkWell(
                            //         onTap: (){
                            //
                            //
                            //         },
                            //         child: Icon(
                            //           Icons.keyboard_arrow_down_rounded,
                            //           color: Styles.IconColor,
                            //         ),
                            //       ),
                            //       Spacer(),
                            //     ],
                            //   ),
                            // ),
                            Gap(5),
                            Divider(
                              height: 10,
                              color: Colors.black,
                              thickness: .2,
                            )
                          ],
                        ),
                      ),
                      Gap(5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FluentSystemIcons.ic_fluent_shapes_regular,
                                  size: 24,
                                  color: Styles.IconColor,
                                ),
                                Gap(15),
                                Text(
                                  'Department',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Gap(5),
                            DropdownButtonFormField(
                              value: _selectvalueDepartment,
                              items: _itemsDepartment
                                  .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  _selectvalueDepartment = val as String;
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
                                fillColor: Color(0xffF5F5F5),
                                filled: true,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                //EdgeInsets.fromLTRB(24.h, 10.h, 20.h, 0.h),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                labelText: 'Search',
                                hintText: 'Search',
                                hintStyle: Styles.lable_Hint,
                                labelStyle: Styles.lable_Hint,
                              ),
                            ),
                            Gap(5),
                            Divider(
                              height: 10,
                              color: Colors.black,
                              thickness: .2,
                            )
                          ],
                        ),
                      ),
                      Gap(5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FluentSystemIcons
                                      .ic_fluent_re_order_dots_regular,
                                  size: 24,
                                  color: Styles.IconColor,
                                ),
                                Gap(15),
                                Text(
                                  'Master Degree',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Gap(5),
                            DropdownButtonFormField(
                              value: _selectvalueMaster,
                              items: _itemsMaster
                                  .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  _selectvalueMaster = val as String;
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
                                fillColor: Color(0xffF5F5F5),
                                filled: true,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                //EdgeInsets.fromLTRB(24.h, 10.h, 20.h, 0.h),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                labelText: 'Search',
                                hintText: 'Search',
                                hintStyle: Styles.lable_Hint,
                                labelStyle: Styles.lable_Hint,
                              ),
                            ),
                            Gap(5),
                            Divider(
                              height: 10,
                              color: Colors.black,
                              thickness: .2,
                            )
                          ],
                        ),
                      ),
                      Gap(5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.sort,
                                  size: 24,
                                  color: Styles.IconColor,
                                ),
                                Gap(15),
                                Text(
                                  'Sort',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Gap(5),
                            DropdownButtonFormField(
                              value: _selectvalueSort,
                              items: _itemsSort
                                  .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  _selectvalueSort = val as String;
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
                                fillColor: Color(0xffF5F5F5),
                                filled: true,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                //EdgeInsets.fromLTRB(24.h, 10.h, 20.h, 0.h),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(12.r),
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
