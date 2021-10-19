import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_properties_business/pages/home_page.dart';
import 'package:house_properties_business/theme.dart';

// ignore: camel_case_types
class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: 
      SafeArea(
        bottom: false,
        child: Stack(
          children: 
          [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/banner.png',)
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/logo.png',width: 180,),
                  SizedBox(height: 40,),
                  Text(
                    'Temukan \nRumah impian',
                    style: titleText.copyWith(
                      fontSize: 40
                    )
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Jual beli rumah Kota Malang\ndan Kota Batu',
                    style: subtitleText.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w200
                    )
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xff14279B),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text('Cari Rumah Sekarang',
                          style: titleText.copyWith(
                          color: whiteColor,
                          fontSize: 16  
                          ),
                        ),
                      ),
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}