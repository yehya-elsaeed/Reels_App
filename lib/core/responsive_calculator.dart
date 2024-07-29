import 'package:flutter/material.dart';

class ResCalc {
  late double width;
  late double height;
  ResCalc.privateConst();
  static ResCalc instance = ResCalc.privateConst();
  factory ResCalc() => instance;
  void initResponsive(BuildContext buildContext) {
    width = MediaQuery.of(buildContext).size.width;
    height = MediaQuery.of(buildContext).size.height;  
  }
  double setWidth(double ratio) => width * ratio;
  double setHeight(double ratio) => height * ratio;
}

