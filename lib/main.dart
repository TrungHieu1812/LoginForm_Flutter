//Buoc 1 khai bao import thu vien
import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: LoginScreen(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}





