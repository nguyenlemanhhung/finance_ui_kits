import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/home_page.dart';
import 'package:finance_ui_kits/screens/main_screen/profile_page/profile_page.dart';
import 'package:finance_ui_kits/screens/main_screen/statistic_page/statistic_page.dart';
import 'package:finance_ui_kits/screens/main_screen/wallet_page/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String routeName = "/main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPage = 0;

  final List<Widget> pages = [
    HomePage(),
    StatisticPage(),
    WalletPage(),
    ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryWhite3,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 66,
        width: 66,
        child: FloatingActionButton(
          backgroundColor: mainCyan1,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 28,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomePage();
                          _currentPage = 0;
                        });
                      },
                      child: _currentPage == 0
                          ? Image.asset('/icons/navbar_icon/home_active.png')
                          : Image.asset('/icons/navbar_icon/home_off.png'),
                    ),
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = StatisticPage();
                          _currentPage = 1;
                        });
                      },
                      child: _currentPage == 1
                          ? Image.asset(
                              '/icons/navbar_icon/chart_active.png',
                              height: 40,
                              width: 28,
                            )
                          : Image.asset(
                              '/icons/navbar_icon/chart_off.png',
                              height: 40,
                              width: 28,
                            ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = WalletPage();
                          _currentPage = 2;
                        });
                      },
                      child: _currentPage == 2
                          ? Image.asset('/icons/navbar_icon/wallet_active.png')
                          : Image.asset('/icons/navbar_icon/wallet_off.png'),
                    ),
                    MaterialButton(
                      minWidth: 28,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfilePage();
                          _currentPage = 3;
                        });
                      },
                      child: _currentPage == 3
                          ? Image.asset(
                              '/icons/navbar_icon/profile_active.png',
                              height: 40,
                              width: 28,
                            )
                          : Image.asset(
                              '/icons/navbar_icon/profile_off.png',
                              height: 40,
                              width: 28,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
