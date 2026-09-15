import 'package:flutter/material.dart';

double getResponsiveSize(BuildContext context) {
  final size = MediaQuery.of(context).size;
  if (size.width > 600) {
    return 100;
  } else if (size.width > 400) {
    return 80;
  } else {
    return 60;
  }
}