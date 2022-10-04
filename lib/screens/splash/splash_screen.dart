import '../../components/custom_button.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/size_configs.dart';
import '../../model/splash_data.dart';
import '../sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

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
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: backgroundBlue,
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
                buildImageSplash(index),
                buildTextSplash(index, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildTextSplash(int index, BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55),
            topRight: Radius.circular(55),
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
              CustomButton(
                text: 'Next',
                textBtnSize: 22,
                bgColor: mainCyan2,
                borderRadius: 40,
                press: () {
                  currentPage == splashData.length - 1
                      ? Navigator.pushNamed(context, SignInScreen.routeName)
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
    );
  }

  Expanded buildImageSplash(int index) {
    return Expanded(
      flex: 3,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: -20,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(140),
                    topRight: Radius.circular(140),
                  ),
                  color: Colors.white.withOpacity(0.2)),
              height: 400,
              width: 320,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(splashData[index].image),
          ),
        ],
      ),
    );
  }
}
