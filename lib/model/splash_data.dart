import 'package:flutter/material.dart';

class SplashContent {
  final String title;
  final String subTitle;
  final String image;

  SplashContent({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<SplashContent> splashData = [
  SplashContent(
    title: 'Manage and Track Your Wallet Easily',
    subTitle:
        'Walley makes you easier Manage and set up your personal finances',
    image: '/images/splash/splash_1.png',
  ),
  SplashContent(
    title: 'Manage and Track Your Wallet Easily 2',
    subTitle:
        'Walley makes you easier Manage and set up your personal finances',
    image: '/images/splash/splash_2.png',
  ),
  SplashContent(
    title: 'Manage and Track Your Wallet Easily 3',
    subTitle:
        'Walley makes you easier Manage and set up your personal finances',
    image: '/images/splash/splash_3.png',
  ),
];