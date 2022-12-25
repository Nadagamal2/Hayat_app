import 'package:flutter/material.dart';
import 'package:hayat/core/utils/app_style.dart';
import 'package:hayat/screens/sign_screen.dart';
 import 'package:hayat/shared/component/component.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/nn.png',
      title: 'Search Doctors',
      body: 'Get List of the best doctor\n nearby you',
    ),
    BoardingModel(
      image: 'assets/rr.png',
      title: 'Book Appointment',
      body: 'Book an appointment with a\n right doctor',
    ),
    BoardingModel(
      image: 'assets/mm.png',
      title: 'Book Diagnostic',
      body: 'Search and book diagnostic\n test',
    ),
  ];
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              controller: _controller,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              physics: BouncingScrollPhysics(),
              itemCount: boarding.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          image: AssetImage(boarding[index].image),
                        ),
                      ),
                      Text(
                        boarding[index].title,
                        style: Styles.headLine2,
                      ),
                      Text(
                        boarding[index].body,
                        style: Styles.headLine3,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                );
              }),
        ),
        if (currentIndex == boarding.length - 3)
          buildBottum(
            //EdgeInsets.symmetric(vertical: 55)
            margin: EdgeInsets.symmetric(vertical: 55),
            height: 43,
            decoration: BoxDecoration(
              color: Styles.buttomColor,
              borderRadius: BorderRadius.circular(14),
            ),
            width: 190,

            text: Text(
              currentIndex == boarding.length - 1 ? 'Lets Go' : 'Next',
              style: Styles.buttomStyle,
              textAlign: TextAlign.center,
            ),
            onTap: () {
              if (currentIndex == boarding.length - 1) {
                navigateAndFinish(
                  context,
                  SignScreen(),
                );
              }
              _controller?.nextPage(
                duration: Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
          ),
        if (currentIndex == boarding.length - 2)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBottum(
                  height: 43,
                  decoration: BoxDecoration(
                    color: Styles.buttomColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 130,
                  margin: EdgeInsets.symmetric(vertical: 55),
                  text: Text(
                    'previous',
                    style: Styles.buttomStyle,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    if (currentIndex == boarding.length - 1) {
                      navigateAndFinish(
                        context,
                        SignScreen(),
                      );
                    }
                    _controller?.previousPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                ),
                buildBottum(
                  height: 43,
                  decoration: BoxDecoration(
                    color: Styles.buttomColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 130,
                  margin: EdgeInsets.symmetric(vertical: 55),
                  text: Text(
                    currentIndex == boarding.length - 1 ? 'Lets Go' : 'Next',
                    style: Styles.buttomStyle,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    if (currentIndex == boarding.length - 1) {
                      navigateAndFinish(
                        context,
                        SignScreen(),
                      );
                    }
                    _controller?.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                ),
              ],
            ),
          ),
        if (currentIndex == boarding.length - 1)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBottum(
                  decoration: BoxDecoration(
                    color: Styles.buttomColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 55),
                  height: 43,
                  width: 130,
                  text: Text(
                    'previous',
                    style: Styles.buttomStyle,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    _controller?.previousPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                ),
                buildBottum(
                  height: 43,
                  decoration: BoxDecoration(
                    color: Styles.buttomColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 130,
                  margin: EdgeInsets.symmetric(vertical: 55),
                  text: Text(
                    currentIndex == boarding.length - 1 ? 'Lets Go' : 'Next',
                    style: Styles.buttomStyle,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    if (currentIndex == boarding.length - 1) {
                      navigateAndFinish(
                        context,
                        SignScreen(),
                      );
                    }
                    _controller?.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                ),
              ],
            ),
          ),
      ],
    ));
  }
}
