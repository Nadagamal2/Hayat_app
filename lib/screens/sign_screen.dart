import 'package:flutter/material.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/sign_in_screen.dart';
import 'package:hayat/screens/sign_up_screen.dart';
 import 'package:hayat/shared/component/component.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: 415,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                  image: DecorationImage(
                      opacity: 80,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/doctor.jpg',
                      ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            spreadRadius: .1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                        image: DecorationImage(
                            opacity: 20,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/logo.png',
                            ))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 94,
            ),
            buildBottum(
              height: 48,
              width: 290,
              decoration: BoxDecoration(
                color: Styles.buttomColor,
                borderRadius: BorderRadius.circular(11),
              ),
              text:  Text(
                'Sign In',

                style: Styles.buttomStyle ,
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 20,

            ),
            buildBottum(
              height: 48,
              decoration: BoxDecoration(
                color: Styles.buttomColor,
                borderRadius: BorderRadius.circular(11),
              ),

              width: 290,
              text:Text(
                'Sign Up',

                style: Styles.buttomStyle ,
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignOutScreen()));
              },
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'By counting ,You agree to Terms & Conditions',
              style: Styles.headLineGray1,
            ),
          ],
        ),
        Positioned(
          bottom: -113,
          height: 155,
          width: 220,
          right: -95,
          child: Container(
             decoration: BoxDecoration(
              color: Styles.buttomColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    ));
  }
}
