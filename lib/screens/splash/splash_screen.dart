import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/model/splash_data.dart';
import 'package:finance_ui_kits/screens/log-in/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

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
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: 140,
                        right: 140,
                        top: 50,
                      ),
                      child: Container(
                        height: 486,
                        width: 488,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100)),
                          color: secondaryGray5,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: Image.asset('images/splash/splash_1.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              // Expanded(
              //   child: PageView.builder(
              //     controller: _pageController,
              //     onPageChanged: (value) {
              //       setState(() {
              //         currentPage = value;
              //       });
              //     },
              //     itemCount: splashData.length,
              //     itemBuilder: (context, index) => Column(
              //       children: [
              //         Expanded(
              //           flex: 3,
              //           child: Image.asset(splashData[index].image),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Container(
              //             decoration: const BoxDecoration(
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(60),
              //                 topRight: Radius.circular(60),
              //               ),
              //               color: Colors.white,
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.symmetric(horizontal: 32),
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                   Text(
              //                     splashData[index].title,
              //                     textAlign: TextAlign.center,
              //                     style: PrimaryFont.bold700(28),
              //                   ),
              //                   Text(
              //                     splashData[index].subTitle,
              //                     textAlign: TextAlign.center,
              //                     style: PrimaryFont.medium500(16),
              //                   ),
              //                   Row(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: List.generate(
              //                       splashData.length,
              //                       (index) => dotIndicator(index),
              //                     ),
              //                   ),
              //                   Container(
              //                     padding: EdgeInsets.symmetric(
              //                       horizontal: 55,
              //                     ),
              //                     width: double.infinity,
              //                     height: 80,
              //                     child: currentPage == splashData.length - 1
              //                         ? ElevatedButton(
              //                             onPressed: () {
              //                               Navigator.push(
              //                                 context,
              //                                 MaterialPageRoute(
              //                                   builder: (context) =>
              //                                       LoginScreen(),
              //                                 ),
              //                               );
              //                             },
              //                             child: Text(
              //                               'Next',
              //                               style:
              //                                   PrimaryFont.bold600(22).copyWith(
              //                                 color: backgroundWhite,
              //                               ),
              //                             ),
              //                           )
              //                         : ElevatedButton(
              //                             style: ButtonStyle(
              //                               shape: MaterialStateProperty.all(
              //                                 RoundedRectangleBorder(
              //                                     borderRadius:
              //                                         BorderRadius.circular(40)),
              //                               ),
              //                               backgroundColor:
              //                             ),
              //                             onPressed: () {
              //                               _pageController.nextPage(
              //                                 duration: const Duration(
              //                                     microseconds: 400),
              //                                 curve: Curves.easeInOut,
              //                               );
              //                             },
              //                             child: Text(
              //                               'Next',
              //                               style:
              //                                   PrimaryFont.bold600(22).copyWith(
              //                                 color: backgroundWhite,
              //                               ),
              //                             ),
              //                           ),
              //                   )
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
