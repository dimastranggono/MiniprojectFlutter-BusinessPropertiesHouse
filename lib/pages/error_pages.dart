import 'package:flutter/material.dart';
import 'package:house_properties_business/theme.dart';

class ErrorPages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Column(
          children: [
            Text('Error',style: subtitleText,)
          ],
        ),
      ),
    );
  }
}