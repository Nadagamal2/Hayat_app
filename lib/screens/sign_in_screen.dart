import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/bottom.dart';
import 'package:hayat/screens/foget_number_screen.dart';
import 'package:hayat/screens/sign_up_screen.dart';

import 'package:hayat/shared/component/component.dart';



class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            children: [
              Gap(105),
              Center(
                  child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
                height: 180,
                width: 180,
              )),
              Gap(8),
              Text(
                'Log in to continue',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetNumberScreen()));
                      },
                      child: Text(
                        'Forget your Password?',
                        style: Styles.headLineGray2 ,
                    )),
                  ],
                ),
              ),
              Gap(48),
              buildBottum(height: 42, width: 290,
                decoration: BoxDecoration(
                  color: Styles.buttomColor,
                  borderRadius: BorderRadius.circular(7.5),
                ),
                text:  Text(
                'LOG IN',

                style: Styles.buttomStyle ,
                textAlign: TextAlign.center,
              ),
                onTap: () {
                navigateAndFinish(context, BottomNav());

              },),

              Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: Styles.headLineGray1,
                  ),
                  defaultTextBottom(onPressed:  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignOutScreen()));
                  }, text:   'SIGN UP',),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
