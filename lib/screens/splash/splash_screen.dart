import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/model/splash_data.dart';
import 'package:finance_ui_kits/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../components/cyan_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: currentPage == index ? mainCyan2 : secondaryGray3,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlue1,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(120),
                                topRight: Radius.circular(120),
                              ),
                              color: Colors.white.withOpacity(0.1)),
                          height: 320,
                          width: 250,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(splashData[index].image),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            splashData[index].title,
                            textAlign: TextAlign.center,
                            style: PrimaryFont.bold700(28),
                          ),
                          Text(
                            splashData[index].subTitle,
                            textAlign: TextAlign.center,
                            style: PrimaryFont.medium500(16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              splashData.length,
                              (index) => dotIndicator(index),
                            ),
                          ),
                          CyanButton(
                            text: 'Next',
                            press: () {
                              currentPage == splashData.length - 1
                                  ? Navigator.pushNamed(
                                      context, SignInScreen.routeName)
                                  : _pageController.nextPage(
                                      duration: Duration(
                                        microseconds: 400,
                                      ),
                                      curve: Curves.easeInOut,
                                    );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
