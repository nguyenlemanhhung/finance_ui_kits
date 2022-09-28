import 'package:finance_ui_kits/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryItem {
  final String image;
  final String name;
  final Color backgroundColor;
  final GestureTapCallback press;
  CategoryItem({
    required this.image,
    required this.name,
    required this.backgroundColor,
    required this.press,
  });
}

List<CategoryItem> categoryItemData = [
  CategoryItem(
    image: '/icons/bill_page/electricity.png',
    name: 'Electricity',
    backgroundColor: mainBlue1,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/water.png',
    name: 'Waver',
    backgroundColor: mainCyan3,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/internet.png',
    name: 'Internet',
    backgroundColor: mainCyan1,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/television.png',
    name: 'Television',
    backgroundColor: mainBlue1,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/education.png',
    name: 'Education',
    backgroundColor: mainCyan3,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/gas.png',
    name: 'Gas',
    backgroundColor: mainCyan1,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/shopping.png',
    name: 'Shopping',
    backgroundColor: mainBlue1,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/land line.png',
    name: 'Land Line',
    backgroundColor: mainCyan3,
    press: () {},
  ),
  CategoryItem(
    image: '/icons/bill_page/application.png',
    name: 'Application',
    backgroundColor: mainCyan1,
    press: () {},
  ),
];
