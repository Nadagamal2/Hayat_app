import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/sign_in_screen.dart';
import 'package:hayat/screens/verify_screen.dart';

import 'package:hayat/shared/component/component.dart';

class SignOutScreen extends StatelessWidget {
  const SignOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  Gap(40),
                  Text(
                    'Create an account',
                    style: Styles.headLine1,
                  ),
                  Gap(12),
                  Text(
                    'Welcome',
                    style: Styles.headLineGray2,
                  ),
                  Gap(32),
                  defaultFieldForm(
                      padding:  EdgeInsets.symmetric(vertical: 3),
                      Type: TextInputType.text,
                      prefix: FluentSystemIcons.ic_fluent_person_regular,
                      lable: 'User Name',
                      hint: 'User Name'),
                  Gap(18),
                  defaultFieldForm(
                      padding:  EdgeInsets.symmetric(vertical: 3),
                      Type: TextInputType.number,
                      prefix: FluentSystemIcons.ic_fluent_phone_filled,
                      lable: 'Phone number',
                      hint: 'Phone number'),
                  Gap(18),
                  defaultFieldForm(
                      padding:  EdgeInsets.symmetric(vertical: 3),
                      Type: TextInputType.text,
                      prefix: FluentSystemIcons.ic_fluent_lock_regular,
                      lable: 'Password',
                      hint: 'Password'),
                  Gap(18),
                  defaultFieldForm(
                      padding:  EdgeInsets.symmetric(vertical: 3),
                      Type: TextInputType.text,
                      prefix: FluentSystemIcons.ic_fluent_lock_regular,
                      lable: 'Confirm Password',
                      hint: 'Confirm Password'),
                  Gap(38),
                  buildBottum(
                    height: 42,
                    decoration: BoxDecoration(
                      color: Styles.buttomColor,
                      borderRadius: BorderRadius.circular(7.5),
                    ),
                    width: 290,
                    text: Text(
                      'Sign up',
                      style: Styles.buttomStyle,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyScreen()));
                    },
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have An Account ?',
                        style: Styles.headLineGray2.copyWith(fontSize: 12.5),
                      ),
                      defaultTextBottom(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        },
                        text: 'LOG IN',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'For registration problems,contact technical support',
                  style: Styles.headLineGray2.copyWith(fontSize: 14.5),
                ),
                Gap(9.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('via WhatsApp :',
                        style: Styles.headLineGray2.copyWith(fontSize: 14.5)),
                    Gap(10),
                    buildBottum(
                      height: 36,
                      width: 111,
                      decoration: BoxDecoration(
                        color: Styles.buttomColor,
                        borderRadius: BorderRadius.circular(4.5),
                      ),
                      text: Text(
                        '01099095701',
                        style: Styles.buttomStyle.copyWith(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {},
                    ),


                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
