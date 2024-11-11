import 'package:flutter/material.dart';
import 'package:primeiro_projeto/view/Login.dart';

void main() => runApp(MaterialApp(
  title: "Eventura",
  home: Login(),
  theme: ThemeData(
    primaryColor: Color(0xff075E54),
    colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Color(0xff075E54))
  ),
  debugShowCheckedModeBanner: false,
));