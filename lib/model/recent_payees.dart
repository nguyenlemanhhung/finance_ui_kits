import 'package:flutter/material.dart';

class RecentPayeesItem {
  final String image;
  final String name;
  final String phone;
  final GestureTapCallback press;
  RecentPayeesItem({
    required this.image,
    required this.name,
    required this.phone,
    required this.press,
  });
}

List<RecentPayeesItem> recentPayeesData = [
  RecentPayeesItem(
    image: '/images/avt1.png',
    name: 'Arya',
    phone: '123***260',
    press: () {},
  ),
  RecentPayeesItem(
    image: '/images/avt1.png',
    name: 'Nafiu',
    phone: '123***260',
    press: () {},
  ),
  RecentPayeesItem(
    image: '/images/avt1.png',
    name: 'Adzka',
    phone: '123***260',
    press: () {},
  ),
  RecentPayeesItem(
    image: '/images/avt1.png',
    name: 'Jaki',
    phone: '123***260',
    press: () {},
  ),
];
