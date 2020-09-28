import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPageview extends StatefulWidget {
  @override
  _OnboardingPageviewState createState() => _OnboardingPageviewState();
}

class _OnboardingPageviewState extends State<OnboardingPageview> {

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff029EB9),
      body:  Container(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: OnboardingArryaList.length,
              itemBuilder: (ctx, i) => OnboardingItems(i),
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: _height *0.38,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < OnboardingArryaList.length; i++)
                          if (i == _currentPage)
                            OnboardingDots(true)
                          else
                            OnboardingDots(false)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingItems extends StatelessWidget {
  final int index;

  OnboardingItems(this.index);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,
        width: _width, height: _height, allowFontScaling: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300.h,
              width: 300.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(OnboardingArryaList[index].onboardingImageUrl)),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                OnboardingArryaList[index].onboardingHeading,
                style: TextStyle(
                  fontSize: 18.sp,
                    color: Colors.white,
                  fontFamily: 'Bahnschrift'
                  //fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              OnboardingArryaList[index].onboardingSubHeading,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
                fontFamily: 'Bahnschrift',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}

class Onboarding {
  final String onboardingImageUrl;
  final String onboardingHeading;
  final String onboardingSubHeading;

  Onboarding(
      {this.onboardingImageUrl,
        this.onboardingHeading,
        this.onboardingSubHeading});
}

final OnboardingArryaList = [
  Onboarding(
    onboardingImageUrl: 'assets/onboard.png',
    onboardingSubHeading: OnboardingConstants.SLIDER_DESC_1,
    onboardingHeading: OnboardingConstants.SLIDER_HEAD_1,
  ),
  Onboarding(
    onboardingImageUrl: 'assets/onboard.png',
    onboardingSubHeading: OnboardingConstants.SLIDER_DESC_2,
    onboardingHeading: OnboardingConstants.SLIDER_HEAD_2,
  ),
  Onboarding(
    onboardingImageUrl: 'assets/onboard.png',
    onboardingSubHeading: OnboardingConstants.SLIDER_DESC_3,
    onboardingHeading: OnboardingConstants.SLIDER_HEAD_3,
  ),
];

class OnboardingConstants {
  static const String SLIDER_DESC_1 =
      "Your guaranteed to always get the best deal";
  static const String SLIDER_DESC_2 =
      "Your buying choices made easier and transparent";
  static const String SLIDER_DESC_3 =
      "Your food is delivered rapidly by the restaurant directly";
  static const String SLIDER_HEAD_1 = "Quality";
  static const String SLIDER_HEAD_2 = "Efficiency";
  static const String SLIDER_HEAD_3 = "Rapidity";
}

class OnboardingDots extends StatelessWidget {
  bool isActive;
  OnboardingDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,
        width: _width, height: _height, allowFontScaling: true);

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 6 : 6,
      width: isActive ? 25 : 25,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.blue[300],
        border: isActive
            ? Border.all(
          color: Colors.transparent,
          width: 2.0.h,
        )
            : Border.all(
          color: Colors.transparent,
          width: 1.h,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
