import 'package:flutter/material.dart';
import 'package:eventura/view/login.dart';

void main() => runApp(MaterialApp(
      title: "Eventura",
      home: const Login(),
      theme: ThemeData(
          primaryColor: const Color(0xff075E54),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff075E54))),
      debugShowCheckedModeBanner: false,
    ));
