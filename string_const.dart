import 'package:flutter/material.dart';

class SbtString {
  final String appbarBaslik = 'İnternetten Veri Çekme İşlemleri';
}

class SbtTextStyle {
  final baslikTextStyle = TextStyle(
    fontSize: SbtSizes().subTitleSize,
    fontWeight: FontWeight.bold,
  );
}

class SbtSizes {
  final double titleSize = 18;
  final double subTitleSize = 16;
}
