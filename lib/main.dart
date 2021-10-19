import 'package:flutter/material.dart';
import 'package:house_properties_business/pages/splash_screen.dart';
import 'package:house_properties_business/provider/house_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp( houseProperties());
}

class houseProperties extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> HouseProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splash_screen(),
      ),
    );
  }
}
