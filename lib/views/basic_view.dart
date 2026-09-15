import 'package:flutter/material.dart';
import '../utils/responsive_utils.dart';

class BasicView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic View'),
      ),
      body: Center(
        child: BasicAnimation(),
      ),
    );
  }
}